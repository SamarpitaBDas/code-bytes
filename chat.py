import random
import json
from db_helper import book_hotel,find_hotel,get_hotel_reviews,get_hotels_by_rating,book_hotel,search_hotels_by_amenities,get_hotel_info,find_hotel_by_description

import torch

from model import NeuralNet
from nltk_utils import bag_of_words, tokenize


device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

with open('intent.json', 'r') as json_data:
    intents = json.load(json_data)

FILE = "data.pth"
data = torch.load(FILE)

input_size = data["input_size"]
hidden_size = data["hidden_size"]
output_size = data["output_size"]
all_words = data['all_words']
tags = data['tags']
model_state = data["model_state"]

model = NeuralNet(input_size, hidden_size, output_size).to(device)
model.load_state_dict(model_state)
model.eval()

bot_name = "Luxing"


def get_response(msg):
    sentence = tokenize(msg)
    X = bag_of_words(sentence, all_words)
    X = X.reshape(1, X.shape[0])
    X = torch.from_numpy(X).to(device)

    output = model(X)
    _, predicted = torch.max(output, dim=1)

    tag = tags[predicted.item()]

    probs = torch.softmax(output, dim=1)
    prob = probs[0][predicted.item()]
    if prob.item() > 0.75:
        for intent in intents:
            if tag == intent["tag"]:
                if intent.get('use_db',False):
                    # Check if the intent requires database interaction
                    if intent.get('tag'):
                        # Assuming 'db_query' contains the query type or identifier
                        if intent['tag'] == 'hotel_reviews':
                            recognized_entity = None

                        # Check if the intent contains entities
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'hotel_amenities':
                                        recognized_entity = entity['value']
                                        break

                                    if recognized_entity:
                                        return get_hotel_reviews(recognized_entity)
                                    else:
                                        return "No hotel amenity recognized"
                            
                                
                        
                        elif intent['tag'] == 'description-search-hotel':
                            recognized_entity = None

                        # Check if the intent contains entities
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'description':
                                        recognized_entity = entity['value']
                                        break
                            return find_hotel_by_description(recognized_entity)
                        elif intent['tag'] == 'hotel-amenities':
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'hotel_name':
                                        recognized_entity = entity['value']
                                        break
                            return get_hotel_info(recognized_entity)
                        elif intent['tag'] == 'amenities-search':
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'amenities':
                                        recognized_entity = entity['value']
                                        break
                            return search_hotels_by_amenities(recognized_entity)
                        elif intent['tag'] == 'hotel-near':
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'city':
                                        recognized_entity = entity['value']
                                        break
                            price_range=intent['parameters']['price_range']
                            return find_hotel(recognized_entity,price_range)
                        elif intent['tag'] == 'booking_hotel':
                            hotel_name=intent['parameters']['hotel_name']
                            check_in_date=intent['parameters']['check-in-date']
                            check_out_date=intent['parameters']['check-out-date']
                            return book_hotel( hotel_name,check_in_date, check_out_date)
                        elif intent['db_query']=='hotel_reviews':
                            if 'entities' in intent:
                                for entity in intent['entities']:
                                    if entity['examples'] == 'hotel_name':
                                        recognized_entity = entity['value']
                                        break
                            return get_hotel_reviews(recognized_entity)
                        else:
                            return "Sorry I failed to understand that"

                else:
                # If no database interaction is needed, return a random response
                    return random.choice(intent['responses'])

    return "I do not understand..."


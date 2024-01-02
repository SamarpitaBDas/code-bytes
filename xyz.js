document.addEventListener('DOMContentLoaded', async function () {
    let fetchedData;

    function matchUserInputWelcome(input, userQueries) {
        let matchedQuery = null;
    
        if (Array.isArray(userQueries)) {
        userQueries.forEach(query => {
            if (query && query.data && Array.isArray(query.data)) {
            const textParts = query.data.filter(part => part.text.trim() !== '').map(part => part.text);
            const fullText = textParts.join(' ');
    
            if (input.toLowerCase().includes(fullText.toLowerCase())) {
                matchedQuery = query;
                return; // Break the loop if match found
            }
            }
        });
        } else {
        console.error('userQueries is not an array or is undefined.');
        }
    
        return matchedQuery;
    }

    function getResponse(query) {
        if (query && query.id === '4e087488-9704-4691-a296-13d769e76cf2') {
        const welcomeIntentResponses = [
            "Hello! How can I help you?",
            "Good day! What can I do for you today?",
            "Greetings! How can I assist?"
        ];
    
          const randomIndex = Math.floor(Math.random() * welcomeIntentResponses.length);
        return { speech: [welcomeIntentResponses[randomIndex]] };
        } else if(query && query.id === '80bef8c3-8a00-4ffe-8a69-97534c199307'){
        const traveltipsresponses =[
            "Sure! Here are some general travel tips:\n\n    Research your destination beforehand.\n    Pack light and smart.\n    Keep copies of important documents.\n    Stay hydrated and take care of your health.\n    Respect the local customs and culture.",
            "Here are a few tips for a stress-free vacation:\n\n    Plan and organize your itinerary in advance.\n    Pack a travel first aid kit.\n    Keep important contact numbers handy.\n    Have a backup of your travel documents.\n    Take some time to relax and enjoy the experience.",
            "When traveling, it\u0027s important to stay safe. Here are a couple of safety tips:\n\n    Be aware of your surroundings, especially in crowded areas.\n    Keep your valuables secure and use hotel safes if available.\n    Share your travel plans with someone you trust.\n    Research the local emergency numbers and healthcare facilities.",
            "If you\u0027re traveling on a budget, consider these tips:\n\n    Look for affordable accommodation options like hostels or vacation rentals.\n    Use public transportation or walk instead of relying on taxis.\n    Eat at local eateries or street food stalls for budget-friendly meals.\n    Take advantage of free attractions and activities in your destination.",
            "Traveling alone? Here are a few tips:\n\n    Inform someone about your travel plans and check in with them regularly.\n    Stay alert and trust your instincts.\n    Research the local customs and laws of your destination.\n    Connect with other travelers through online communities or local events."
        ];
          const randomIndex = Math.floor(Math.random() * traveltipsresponses.length);
        return { speech: [traveltipsresponses[randomIndex]] };
        }
    
    
        return null;
    }
    function simulateAIResponse(response) {
        if (response && response.speech && response.speech.length > 0) {
        const aiResponse = response.speech[0];
        const chatBox = document.getElementById('chatBox');
        const trimmedResponse = aiResponse.trim();

        if (trimmedResponse !== '') {
            chatBox.innerHTML += `<div class="ai-msg">${trimmedResponse}</div>`;
        }
    
        chatBox.scrollTop = chatBox.scrollHeight;
        }
    }
    
    
      // Function to handle user input and simulate AI response
    function handleUserInput(input) {
        const chatBox = document.getElementById('chatBox');
        chatBox.innerHTML += `<div class="user-msg">${input}</div>`;
    
        const matchedQuery = matchUserInputWelcome(input, fetchedData);
        if (matchedQuery) {
        const aiResponse = getResponse(matchedQuery);
        if (aiResponse) {
            simulateAIResponse(aiResponse);
        } else {
            simulateAIResponse({ speech: ["No response found for the matched query."] });
            }
        }
    
        chatBox.scrollTop = chatBox.scrollHeight;
    }

    // Function to send user input to the backend for tokenization
    function sendUserInputToBackend(input) {
        fetch('http://localhost:5000/tokenize', { // Update URL to your backend endpoint
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ 'user_input': input })
        })
        .then(response => response.json())
        .then(data => {
            // Tokenized data received from the backend
            console.log('Tokenized input:', data.tokenized_input);
            // Process tokenized data or perform further actions
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }

    // Function to handle user input and simulate AI response
    function sendMessage(event, userQueries) {
        if ((event.keyCode === 13 || event.type === 'click') && Array.isArray(userQueries)) {
            const userInput = document.getElementById('userInput').value;
            const chatBox = document.getElementById('chatBox');

            chatBox.innerHTML += `<div class="user-msg">${userInput}</div>`;
            document.getElementById('userInput').value = '';

            sendUserInputToBackend(userInput); // Call the function to send user input for tokenization

            const matchedQuery = matchUserInputWelcome(userInput, userQueries);
            if (matchedQuery) {
                const aiResponse = getResponse(matchedQuery);
                if (aiResponse) {
                    simulateAIResponse(aiResponse);
                } else {
                    simulateAIResponse({ speech: ["No response found for the matched query."] });
                }
            }

            chatBox.scrollTop = chatBox.scrollHeight;
        }
    }

    // Expose the sendMessage function to the global scope
    window.sendMessage = sendMessage;

    // Fetch user queries data
    fetch('./Default-Welcome-Intent_usersays_en.json')
        .then(response => {
            // ... (existing code for fetching data)
        })
        .catch(error => {
            console.error('Error fetching or parsing JSON:', error);
        });
});

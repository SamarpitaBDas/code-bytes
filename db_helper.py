import mysql.connector
import difflib
from datetime import datetime

global conn

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="UK060987s@",
    database="hoteldb"
)



def find_hotel(city,price_range):
    try:
        cursor = conn.cursor()
        query = "SELECT name,price_range FROM hotels WHERE city=%s AND price_range = %s"
        cursor.execute(query, (city, price_range))
        result = cursor.fetchone()

        if result:
            hotel_name, found_price_range = result
            return f"Hotel: {hotel_name}, Price: {found_price_range}"
        else:
            query_nearby = "SELECT name,price_range FROM hotels WHEREprice_range <= ? LIMIT 1"
            cursor.execute(query_nearby, (price_range * 1.2,))

            result_nearby = cursor.fetchone()
            if result_nearby:
                hotel_name, found_price_range = result_nearby
                return f"Nearby Hotel: {hotel_name}, Price: {found_price_range}"
            else:
                return "No matching hotels found."

    except mysql.connector.Error as err:
        print(f"Database error: {err}")
    finally:
        # Close the database connection
        if conn:
            conn.close()


def get_hotel_reviews(hotel_name):
    try:

        cursor = conn.cursor()

        # Get the hotel ID based on the provided hotel name
        get_hotel_id_query = "SELECT hotel_id FROM hotels WHERE name = %s"
        cursor.execute(get_hotel_id_query, (hotel_name,))
        hotel_id_result = cursor.fetchone()

        if not hotel_id_result:
            return None

        hotel_id = hotel_id_result[0]

        # Get the reviews for the hotel using the hotel ID
        get_reviews_query = "SELECT comment FROM reviews WHERE hotel_id = %s"
        cursor.execute(get_reviews_query, (hotel_id,))

        reviews = cursor.fetchall()

        if not reviews:
            return None
        else:
            review=cursor.fetchone()
            return review

    except mysql.connector.Error as e:
        print(f"MySQL conn error: {e}")




def get_hotels_by_rating(rating):
    try:
        # Establish a conn (replace with your conn details)
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="UK060987s@",
            database="hoteldb"
        )

        cursor = conn.cursor()

        # Get the hotel IDs based on the provided rating
        get_hotel_ids_query = "SELECT DISTINCT hotel_id FROM reviews WHERE rating = %s"
        cursor.execute(get_hotel_ids_query, (rating,))
        hotel_ids_result = cursor.fetchall()

        if not hotel_ids_result:
            print(f"No hotels found with the rating {rating}")
            return

        hotel_ids = [hotel_id[0] for hotel_id in hotel_ids_result]

        # Get the hotel names for the retrieved hotel IDs
        get_hotel_names_query = "SELECT name FROM hotels WHERE hotel_id IN ({})".format(
            ",".join(["%s"] * len(hotel_ids))
        )
        cursor.execute(get_hotel_names_query, hotel_ids)

        hotel_names = cursor.fetchall()

        if not hotel_names:
            print(f"No hotel names found for the rating {rating}")
            return

        print(f"Hotels with rating {rating}:")
        for hotel_name in hotel_names:
            print(hotel_name[0])

    except mysql.connector.Error as e:
        print(f"MySQL conn error: {e}")

    

def book_hotel(hotel_name,check_in_date, check_out_date):
    num_guests=1
    total_price="$200"
    booking_status="confirmed"
    user_id=101
    try:
        # Establish a connection (replace with your connection details)
        connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="UK060987s@",
        database="hoteldb"
)

        cursor = connection.cursor()
        get_hotel_id_query = "SELECT hotel_id FROM hotels WHERE hotel_name = %s"
        cursor.execute(get_hotel_id_query, (hotel_name,))
        result = cursor.fetchone()
        if result:
            hotel_id= result[0]  # Return the hotel_id
        # Check if the hotel is available for the given dates
        check_availability_query = (
            "SELECT * FROM bookings WHERE hotel_id = %s "
            "AND NOT (%s >= check_out_date OR %s <= check_in_date)"
        )
        cursor.execute(check_availability_query, (hotel_id, check_out_date, check_in_date))

        if cursor.fetchone():
            print("Hotel is not available for the selected dates.")
            return

        # Book the hotel
        book_hotel_query = (
            "INSERT INTO bookings (user_id, hotel_id, check_in_date, check_out_date,num_guests,total_price,booking_status) "
            "VALUES (%s, %s, %s, %s, %s, %s, %s)"
        )
        cursor.execute(book_hotel_query, (user_id, hotel_id, check_in_date, check_out_date,num_guests,total_price,booking_status))

        connection.commit()
        print("Hotel booked successfully!")

    except mysql.connector.Error as e:
        print(f"MySQL connection error: {e}")

    finally:
        # Close the database connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")





def search_hotels_by_amenities(amenities):
    try:
        # Establish a connection (replace with your connection details)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="UK060987s@",
            database="hoteldb"
)

        cursor = connection.cursor()

        # Create a dynamic SQL query to search for hotels with specified amenities
        search_query = "SELECT name, price_range FROM hotels WHERE "
        conditions = []
        parameters = []

        for amenity in amenities:
            conditions.append("amenities LIKE %s")
            parameters.append(f"%{amenity}%")

        search_query += " AND ".join(conditions)

        cursor.execute(search_query, parameters)

        results = cursor.fetchall()

        if not results:
            return None

        print("Hotels with matching amenities:")
        for result in results:
            return f"Hotel: {result[0]}, Price Range: {result[1]}"

    except mysql.connector.Error as e:
        return e

def get_hotel_info(hotel_name):
    try:
        # Establish a connection (replace with your connection details)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="UK060987s@",
            database="hoteldb"
        )
        cursor = connection.cursor()

        # Get hotel information (amenities) based on the provided hotel name
        get_hotel_info_query = "SELECT hotel_id, amenities FROM hotels WHERE name = %s"
        cursor.execute(get_hotel_info_query, (hotel_name,))
        hotel_info_result = cursor.fetchone()

        if not hotel_info_result:
            return None

        hotel_id, amenities = hotel_info_result

        # Get reviews for the hotel based on the hotel_id
        get_reviews_query = "SELECT comment FROM reviews WHERE hotel_id = %s"
        cursor.execute(get_reviews_query, (hotel_id,))
        reviews = cursor.fetchall()

        return amenities
    except mysql.connector.Error as e:
        return e



def find_hotel_by_description(description):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="UK060987s@",
            database="hoteldb"
        )

        cursor = connection.cursor()

        # Fetch all hotel names and descriptions from the database
        get_hotels_query = "SELECT name, description FROM hotels"
        cursor.execute(get_hotels_query)
        hotels_data = cursor.fetchall()

        # Find the most similar hotel based on the description
        best_match = difflib.get_close_matches(description, [hotel[1] for hotel in hotels_data], n=1, cutoff=0.6)

        if not best_match:
            return None

        # Get the corresponding hotel name for the best match
        matching_index = [hotel[1] for hotel in hotels_data].index(best_match[0])
        matching_hotel_name = hotels_data[matching_index][0]

        return matching_hotel_name

    except mysql.connector.Error as e:
        return e

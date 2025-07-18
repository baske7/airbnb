from faker import Faker
import random
from datetime import datetime, timedelta

faker = Faker()

def generate_amenities(n):
    return [f"('{faker.word().capitalize()}')" for _ in range(n)]

def generate_properties(user_ids, n):
    return [
        f"({random.choice(user_ids)}, '{faker.city()}', '{faker.street_address()}', '{faker.country()}', "
        f"'{faker.sentence(nb_words=4)}', '{faker.text(max_nb_chars=100)}', {round(random.uniform(30, 300), 2)}, "
        f"{random.randint(1, 10)}, {random.randint(1, 5)}, {random.randint(1, 3)}, {random.choice([0,1])}, "
        f"'{faker.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')}')"
        for _ in range(n)
    ]

def generate_property_images(property_ids, n):
    return [
        f"({random.choice(property_ids)}, 'https://picsum.photos/seed/{faker.uuid4()}/600/400', {random.choice([0,1])})"
        for _ in range(n)
    ]

def generate_bookings(user_ids, property_ids, n):
    bookings = []
    for _ in range(n):
        user = random.choice(user_ids)
        prop = random.choice(property_ids)
        check_in = faker.date_between(start_date='-3M', end_date='today')
        check_out = check_in + timedelta(days=random.randint(1, 14))
        guests = random.randint(1, 5)
        price = round(random.uniform(50, 500), 2)
        bookings.append(
            f"({prop}, {user}, '{check_in}', '{check_out}', {guests}, {price}, 'confirmed', '{faker.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')}')"
        )
    return bookings

def generate_reviews(user_ids, property_ids, n):
    return [
        f"({random.choice(user_ids)}, {random.choice(property_ids)}, {random.randint(1, 5)}, "
        f"'{faker.sentence(nb_words=8)}', '{faker.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')}')"
        for _ in range(n)
    ]

def generate_favourites(user_ids, property_ids, n):
    return [
        f"({random.choice(property_ids)}, {random.choice(user_ids)}, "
        f"'{faker.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')}')"
        for _ in range(n)
    ]

def generate_amenities_properties(amenity_ids, property_ids, n):
    return [
        f"({random.choice(amenity_ids)}, {random.choice(property_ids)})"
        for _ in range(n)
    ]

# 👇 Primer ID-eva koje koristiš
user_ids = list(range(1, 11))
property_ids = list(range(1, 11))
amenity_ids = list(range(1, 11))

# 👇 Generisanje SQL upita
print("-- INSERT INTO amenities (amenityName) VALUES")
print(",\n".join(generate_amenities(10)) + ";")

print("\n-- INSERT INTO properties (userId, city, address, country, title, desc, pricePerNight, maxGuests, bedrooms, bathrooms, isActive, propertyCreated_at) VALUES")
print(",\n".join(generate_properties(user_ids, 10)) + ";")

print("\n-- INSERT INTO propertyImages (propertyId, imageURL, isFeatured) VALUES")
print(",\n".join(generate_property_images(property_ids, 20)) + ";")

print("\n-- INSERT INTO bookings (propertyId, userId, checkIn, checkOut, numberOfGuests, totalPrice, bookingStatus, bookingCreated_at) VALUES")
print(",\n".join(generate_bookings(user_ids, property_ids, 10)) + ";")

print("\n-- INSERT INTO reviews (userId, propertyId, rating, comment, reviewCreated_at) VALUES")
print(",\n".join(generate_reviews(user_ids, property_ids, 10)) + ";")

print("\n-- INSERT INTO favourites (propertyId, userId, favouriteCreated_at) VALUES")
print(",\n".join(generate_favourites(user_ids, property_ids, 10)) + ";")

print("\n-- INSERT INTO amenities_properties (amenityId, propertyId) VALUES")
print(",\n".join(generate_amenities_properties(amenity_ids, property_ids, 15)) + ";")

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Order.destroy_all

5.times do
  Order.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    schedule: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    city: Faker::Address.city,
    street: Faker::Address.street_name,
    number: Faker::Address.building_number,
    zip_code: Faker::Address.zip_code,
    country: Faker::Address.country,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number
  )
end

p "Created #{User.count} users"
p "Created #{Order.count} requests"

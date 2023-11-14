# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.create(name: "Dorcas")
User.create(name: 'John', full_name: 'John Doe')
User.create(name: 'Anna', full_name: 'Anna Doe')

john_id = User.find_by(name: 'John').id
anna_id = User.find_by(name: 'Anna').id

Car.create(
    name: 'Car 1',
    model: 'Model A',
    description: 'Description for Car 1',
    img: 'car1.jpg',
    finance_fee: 15000.50,
    total_amount: 25000.75,
    duration: 5,
    user_id: john_id
  )

Car.create(
    name: 'Car 2',
    model: 'Model B',
    description: 'Description for Car 2',
    img: 'car2.jpg',
    finance_fee: 18000.75,
    total_amount: 28000.25,
    duration: 7,
    user_id: anna_id
  )

Car.create(
    name: 'Car 3',
    model: 'Model C',
    description: 'Description for Car 3',
    img: 'car3.jpg',
    finance_fee: 20000.0,
    total_amount: 30000.0,
    duration: 4,
    user_id: john_id
  )

Car.create(
    name: 'Car 4',
    model: 'Model D',
    description: 'Description for Car 4',
    img: 'car4.jpg',
    finance_fee: 22000.50,
    total_amount: 32000.75,
    duration: 6,
    user_id: anna_id
  )

Car.create(
    name: 'Car 5',
    model: 'Model E',
    description: 'Description for Car 5',
    img: 'car5.jpg',
    finance_fee: 19000.25,
    total_amount: 29000.50,
    duration: 8,
    user_id: john_id
  )

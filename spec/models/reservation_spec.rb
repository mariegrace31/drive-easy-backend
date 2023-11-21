require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'Should allow reservation with date,city,user_id,car_id' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    reserve = Reservation.create(date: '2024/05/11', city: 'New Delhi', user_id: john_id, car_id: car.id)
    expect(reserve).to be_valid
  end

  it 'Should not allow reservation without date' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    reserve = Reservation.create(city: 'New Delhi', user_id: john_id, car_id: car.id)
    expect(reserve).not_to be_valid
  end

  it 'Should not allow reservation without city' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    reserve = Reservation.create(date: '2024/05/11', user_id: john_id, car_id: car.id)
    expect(reserve).not_to be_valid
  end

  it 'Should not allow user without user_id' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    reserve = Reservation.create(date: '2024/05/11', city: 'New Delhi', car_id: car.id)
    expect(reserve).not_to be_valid
  end

  it 'Should not allow reservation without car_id' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    reserve = Reservation.create(date: '2024/05/11', city: 'New Delhi', user_id: john_id)
    expect(reserve).not_to be_valid
  end
end

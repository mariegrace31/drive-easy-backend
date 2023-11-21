require 'rails_helper'

RSpec.describe Car, type: :model do
  it 'Should allow the car with name,model,image,finance_fee,total_amount ' do
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
    expect(car).to be_valid
  end

  it 'Should not allow the car without name' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car without model' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car without image' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car without finance_fee' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      total_amount: 87_500.00,
      duration: 7,
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car without total_amount ' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      duration: 7,
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car with non-integer duration ' do
    User.create(name: 'John', full_name: 'John Doe')
    john_id = User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 'something',
      user_id: john_id
    )
    expect(car).not_to be_valid
  end

  it 'Should not allow the car without user_id' do
    User.create(name: 'John', full_name: 'John Doe')
    User.find_by(name: 'John').id
    car = Car.create(
      name: 'Mercedes-Benz',
      model: 'E-Class Cabriolet',
      img: 'image.jpg',
      finance_fee: 1365.12,
      total_amount: 87_500.00,
      duration: 7
    )
    expect(car).not_to be_valid
  end
end

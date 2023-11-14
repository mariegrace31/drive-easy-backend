class User < ApplicationRecord
  has_many :cars
  has_many :reservations, class_name: 'Reservation', foreign_key: 'user_id'

  validates :name, :full_name, presence: true, length: { maximum: 50 }, uniqueness: true
end

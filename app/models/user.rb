class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reservations, class_name: 'Reservation', foreign_key: 'user_id', dependent: :destroy

  validates :name, :full_name, presence: true, length: { maximum: 50 }
end

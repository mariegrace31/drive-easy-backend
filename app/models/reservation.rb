class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :car_id, presence: true
  validates :user_id, presence: true
  validates :date, presence: true
  validates :city, presence: true
end

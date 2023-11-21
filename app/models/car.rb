class Car < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :model, presence: true
  validates :img, presence: true
  validates :finance_fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :total_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
end

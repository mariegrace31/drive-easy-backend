class User < ApplicationRecord
  has_many :cars

  validates :name, :full_name, presence: true, length: { maximum: 50 }, uniqueness: true
end

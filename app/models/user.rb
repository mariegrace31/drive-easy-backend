class User < ApplicationRecord
  validates :name, :full_name, presence: true, length: { maximum: 50 }, uniqueness: true
end

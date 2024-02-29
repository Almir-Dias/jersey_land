class Shirt < ApplicationRecord
  belongs_to :user

  validates :size, presence: true
  validates :price, presence: true
  validates :gender, presence: true
  validates :team, presence: true
end

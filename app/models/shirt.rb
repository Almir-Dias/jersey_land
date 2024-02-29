class Shirt < ApplicationRecord
  belongs_to :user

  validates :size, presence: true
  validates :price, presence: true
  validates :gender, presence: true
  validates :team, presence: true
  has_one_attached :photo
end

class Shirt < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  validates :size, presence: true
  validates :price, presence: true
  validates :gender, presence: true
  validates :team, presence: true
  has_one_attached :photo
  validates :photo, presence: true
end

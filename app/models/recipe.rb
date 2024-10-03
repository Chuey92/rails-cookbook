class Recipe < ApplicationRecord
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  has_many :bookmarks
  has_many :categories, through: :bookmarks
end

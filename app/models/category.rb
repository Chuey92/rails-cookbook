class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks

  has_one_attached :photo
end

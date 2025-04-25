class Product < ApplicationRecord
  validates :title, length: { minimum: 3, maximum: 50, message: "Maximum 30 characters." }
  validates :price, numericality: { greater_than: 0.01, only_integer: false}
  validates :title, uniqueness: true
  validates_presence_of :title, :price
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

end

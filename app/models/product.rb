class Product < ApplicationRecord
  include Hashid::Rails
  extend Enumerize
  enumerize :unit, in: [:yen, :usd]
  mount_uploader :image, ImageUploader
  has_many :basket_products, dependent: :destroy  
  has_many :purchase_product_records, dependent: :destroy


  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :unit, presence: true
end

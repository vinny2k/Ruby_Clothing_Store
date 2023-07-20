class Savelist < ApplicationRecord
  has_many :products
  belongs_to :product
  belongs_to :user
end

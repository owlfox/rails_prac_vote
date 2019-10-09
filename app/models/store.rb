class Store < ApplicationRecord
  belongs_to :owner
  has_many :products
end

class Store < ApplicationRecord
  # belongs_to :owner
  # has_many :products

  has_many :warehouses
  has_many :products, through: :warehouses
  #habtm, convention sort model name in order and join them like products_stores
  # has_and_belongs_to_many :products, join_table: "warehouses"
end

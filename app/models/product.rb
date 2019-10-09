class Product < ApplicationRecord
  # belongs_to :store

  has_many :warehouses
  has_many :stores, through: :warehouses
  #habtm
  # has_and_belongs_to_many :stores, join_table: "warehouses"
end

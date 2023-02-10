class Category < ApplicationRecord
   has_many :post
   validates_uniqueness_of :name
end
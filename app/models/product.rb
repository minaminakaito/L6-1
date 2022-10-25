class Product < ApplicationRecord
    has_many :cartitem, dependent: :destroy
    has_many :cart, dependent: :destroy
end

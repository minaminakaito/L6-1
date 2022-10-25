class Cart < ApplicationRecord
    has_many :cartitem
    has_many :product
end

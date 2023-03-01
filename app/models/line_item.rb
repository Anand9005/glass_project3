class LineItem < ApplicationRecord

    belongs_to :store

	belongs_to :cart

    has_many_attached :images
  	
	def total_price
		store.price * quantity
	end
end

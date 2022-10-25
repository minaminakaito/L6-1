class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    def create
        @cartitem = Cartitem.new(qty: params[:cartitem][:qty], product_id: params[:cartitem][:product_id], cart_id: current_cart.id)
        @cartitem.save
        redirect_to root_path
    end
    def destroy
        cartitem = Cartitem.find(params[:id])
        cartitem.destroy
        redirect_to root_path
    end
end

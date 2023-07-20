class DescriptionController < ApplicationController
    def index
    @product = Product.find(params[:product_id])

end
    def cart
         if current_user    
        @order = Order.find_by(user: current_user)
        @item = OrderItem.where(order: @order)
        
    else
         redirect_to   new_user_session_path
     end
        
        
    end
    
    def checkout
        @order = Order.find_by(user: current_user)
        @item = OrderItem.where(order: @order)
        @item.destroy_all
        @order.destroy
         redirect_to  description_cart_path
            
    end
    
    def create
        if current_user       
        userorder  = Order.where(user: current_user)
    if userorder == []
       userorder = Order.create(user: current_user)
       userorder.save!
    end
     @product = Product.find(params[:product_id])
     price = @product.price*params[:quantity].to_i
     OrderItem.create(quantity: params[:quantity], size: params[:size], colour: params[:colour], order: Order.find_by(user: current_user), price: price, product: @product.title)
    redirect_to  description_cart_path
else
    redirect_to   new_user_session_path
end
end
end

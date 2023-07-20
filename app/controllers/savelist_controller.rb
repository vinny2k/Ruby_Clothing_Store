class SavelistController < ApplicationController
  
  def index
   
   
  end
    
  def banner
    print(params[:product_id])
    savelist  = Savelist.where(product: Product.find(params[:product_id]), user: current_or_guest_user)
    if savelist == []
      Savelist.create(product: Product.find(params[:product_id]), user: current_or_guest_user)
      @savelist_exists = true
    else
    savelist.destroy_all()
     @savelist_exists = false
      
   end
   redirect_to root_path
    end 
  def update
    print(params[:product_id])
    savelist  = Savelist.where(product: Product.find(params[:product_id]), user: current_or_guest_user)
    if savelist == []
      Savelist.create(product: Product.find(params[:product_id]), user: current_or_guest_user)
      @savelist_exists = true
    else
    savelist.destroy_all()
     @savelist_exists = false
    end 
    respond_to do |format|
      format.html {}
      format.js {}
    end
    

  end
end

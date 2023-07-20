class StaticPagesController < ApplicationController
  before_action :display_random_product #either change this so it only calls for home page, or make sure it doesnt change any variables on other pages
   
  
  def home
  end

  def about
  end
  
  def display_random_product
    count = 0
    @product = Product.find(Product.pluck(:id).sample)
    # if (Savelist.exists?(:product_id => @product.id)) // to be used to recursively call method until a product not in the savelist is plucked
    @product_name = @product.title
    @product_description = @product.description
    @product_id = @product.id 
  end
   
  
  def apply_newsletter
    @email = params[:visitor_email]
    
    if (@email =~ URI::MailTo::EMAIL_REGEXP)
      
      NewsletterMailer.send_signup_email(@email).deliver
      redirect_to('/home')
    else
      render :action => '/home'
    end
  end

end

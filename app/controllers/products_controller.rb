class ProductsController < ApplicationController

    def index
        @category = Category.find(params[:category_id])
        @products = @category.products.order(:title)
        @savelist_exists = Savelist.where(product: @product, user: current_or_guest_user) == [] ? false : true
    end
    def description

    end
end

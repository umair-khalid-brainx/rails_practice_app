module Admin
  class ProductsController < ApplicationController
    before_action :append_view_paths

    def append_view_paths
      append_view_path "app/views/admin/products"
    end

    def index
      @products = Product.all
      respond_to do |format|
        format.html
        format.atom
      end

      @variable1 = Product.with_low_price
      puts "Scope Query"
      puts @variable1
    end

    def show
      @product = Product.find(params[:id])
    end
  end
end

class ProductsController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]
  # GET /products
  def index 
    render json: Product.all, status: :ok
  end

  # SHOW /products/id
  def show 
    render json: Product.find(params[:id]), status: :found
  end


  

  # POST /products --> 0nly by the seller <--
  def create 
    product = Product.create(product_params)
    if (product)
      current_user = User.find(session[:user_id])
      current_user.add_role(:seller) unless current_user.roles.any? {|role| role.name == "seller" }
    end
    render json: product, status: :created
  end

  # UPDATE /products/:id --> 0nly by the seller <--
  def update
    # byebug
    product = Product.find_by(id: params[:id])
    product.update(product_params)
    render json: product
  end

  # DELETE /products/:id --> 0nly by the seller <--
  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    head :no_content
  end


  private
  def product_params
    params.permit(:name, :price, :description, :image_url,:category_id , :released_year, :user_id)
  end
end

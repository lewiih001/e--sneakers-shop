class UsersController < ApplicationController
  skip_before_action :authorize
  # before_action :verify_authenticity_token, options
  #  skip_before_action :verify_authenticity_token

  # GET /users
  def index 
    render json: User.all, status: :ok
  end


  # POST singup *works on postman  *** not working on react ***
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # patch 
  def update
    # this gives an error [NoMethodError (undefined method `update' for nil:NilClass)]
    # user = User.find_by(id: session[:user_id])
    # user.update(user_params)
    # render json: user, status: :created

    # this works & only password can be updated 
    current_user =  User.find_by(id: params[:id])
    render json: current_user.update(user_params)
  end

  # get "/me", to: "users#show"
  def show
    render json: current_user, status: :ok
  end

  # get "/sellers", to: "users#get_sellers" **didnt try out *
  def get_sellers
    sellers = Role.find_by(name: "seller").users
    render json: sellers
  end

  # get "/getOrders", to: "users#get_orders"  **didnt try out *
  def get_orders
    orderItems = current_user.order_items
    orders = orderItems.map do |order_item|
      order_item.order
    end.uniq
    render json: orders
  end

# just for removing users with null data
  # def destroy
  #   product = User.find_by(id: params[:id])
  #   product.delete
  #   head :no_content
  # end

  # def current_user
  #   User.find_by(id: session[:user_id])
  # end


  private

  def user_params
    params.permit(:username, :password, :email, :password_confirmation)
  end
end

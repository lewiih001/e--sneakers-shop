class UsersController < ApplicationController
  skip_before_action :authorize

  # GET /users
  def index 
    render json: User.all, status: :ok
  end

  # POST /singup 
  def create
    # {******---> trying to link the cart and the user not working
    # user = User.create!(user_params)
    # session[:user_id] = user.id
    # cart = Cart.create!(total_items: 0, total_amount: 0, user_id: user.id)
    # move_cart_products_guest_to_user(user)
    # if (!session[:cart_id])
    #   session[:cart_id] = user.cart.id
    # end
    # render json: user, status: :created <------********}

    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT
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

  # get "/sellers", to: "users#get_sellers" 
  def get_sellers
    sellers = Role.find_by(name: "seller").users
    render json: sellers
  end

  # get "/getOrders", to: "users#get_orders"  
  def get_orders
    orderItems = current_user.order_items
    orders = orderItems.map do |order_item|
      order_item.order
    end.uniq
    render json: orders
  end

  private

  def user_params
    params.permit(:username, :password, :email, :password_confirmation)
  end
end

class UsersController < ApplicationController
  skip_before_action :authorize
  # before_action :verify_authenticity_token, options
  #  skip_before_action :verify_authenticity_token

  # GET /users
  def index 
    render json: User.all, status: :ok
  end

  # # to see if it works
  # def show 
  #   render json: User.find(params[:id]), status: :found
  # end

  # POST singup *works on postman  *** not working on react ***
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # patch ** not working on postman
  def update
    # user = User.find_by(id: session[:user_id])
    # user.update(user_params)
    # render json: user, status: :created
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

  def current_user
    User.find_by(id: session[:user_id])
  end


  private

  def user_params
    params.permit(:name, :password, :email, :password_confirmation)
  end
end

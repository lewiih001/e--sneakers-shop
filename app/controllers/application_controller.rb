class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  before_action :authorize

  def current_user
    User.find_by(id: session[:user_id])
  end

  def current_cart
    Cart.find_by(id: session[:cart_id])
  end


  private
  # for invalid
  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
  # for not found
  def render_not_found_response
    render json: { errors: "not found" }, status: :not_found
  end
  # for authorization
  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

  def move_cart_products_guest_to_user(user)
    if session[:cart_id]
      guest_cart = Cart.find(session[:cart_id])
      guest_cart.cart_products.each do |cart_prod|
        CartProduct.create(cart_id: user.cart.id,product_id: cart_prod[:product_id],item_quantity: cart_prod[:item_quantity])
        product = Product.find(cart_prod[:product_id])
        user.cart.update(total_amount: user.cart[:total_amount] + (cart_prod[:item_quantity] * product[:price]).to_i,total_items: user.cart[:total_items] + cart_prod[:item_quantity])
      end
      guest_cart.cart_products.destroy_all
      guest_cart.destroy
      session[:cart_id] = user.cart.id
    end
  end
end

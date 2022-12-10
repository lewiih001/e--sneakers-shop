Rails.application.routes.draw do
  resources :cart_products, only: [:create, :destroy, :destroy_all]
  resources :carts, only: [:index, :show]
  resources :ordered_items
  resources :orders, only: [:index]
  resources :categories, only: [:index]
  resources :users
  resources :products, only: [:index, :show, :create, :update, :destroy]

  #  custom routes for users
  post "/signup", to: "users#create"

  get "/me", to: "users#show"
  patch "/users/:id", to: "users#update"
  get "/sellers", to: "users#get_sellers"
  get "/getOrders", to: "users#get_orders"

  # delete "/users/:id", to: "users#destroy"

  # custom routes for sessions
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

  # custom routes for orders
  get "/myorders", to: "orders#user_orders"

  # custom routes for products
  get "/userProducts/:user_id", to: "products#user_products"
  get "/productsCategory/:category_id", to: "products#product_by_category"

  # custom routes for cart_products
  post "/addtocart", to: "cart_products#create"
  delete "/cart_products/:product_id", to: "cart_products#destroy"
  delete "/clearCart", to: "cart_products#destroy_all"

  # custom routes for cart
  get "/myCart", to: "carts#current_cart"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

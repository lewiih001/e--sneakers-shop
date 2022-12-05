Rails.application.routes.draw do
  resources :ordered_items
  resources :orders, only: [:index]
  resources :categories, only: [:index]
  resources :users
  resources :products, only: [:index, :show, :create, :update, :destroy]

  #  custom routes for users
  post "/signup", to: "users#create"
  # ------ **** the post above isnt working with the browser **** ------ #

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



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

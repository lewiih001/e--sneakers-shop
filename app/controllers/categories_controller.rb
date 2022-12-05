class CategoriesController < ApplicationController
  def index 
    render json: Categpry.all, status: :ok
  end
end

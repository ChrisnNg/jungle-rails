class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.order(id: :asc).all
  end
end

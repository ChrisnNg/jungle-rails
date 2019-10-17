class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.order(id: :asc).all
  end
  def new
    @category = Category.new
  end
end

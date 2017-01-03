class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :update, :destroy]

  def index
    @categories = Category.all

    if params[:fields]
      render json: @categories.as_json(only: params[:fields].split(',') )
    elsif params[:count]
      render json: @categories.count
    else
      render json: @categories
    end
  end

  def show
    render json: @category
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def update
    if @category.update(category_params)
      head :no_content
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy

    head :no_content
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:taxonomy_id, :manager_id, :updated_user_id, :title, :short_title, :description, :url)
  end

end

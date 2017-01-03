class TaxonomiesController < ApplicationController

  before_action :set_taxonomy, only: [:show, :update, :destroy]

  def index
    @taxonomies = Taxonomy.all

    if params[:fields]
      render json: @taxonomies.as_json(only: params[:fields].split(',') )
    elsif params[:count]
      render json: @taxonomies.count
    else
      render json: @taxonomies
    end
  end

  def show
    render json: @taxonomy
  end

  def create
    @taxonomy = Taxonomy.new(taxonomy_params)

    if @taxonomy.save
      render json: @taxonomy, status: :created, location: @taxonomy
    else
      render json: @taxonomy.errors, status: :unprocessable_entity
    end
  end

  def update
    if @taxonomy.update(taxonomy_params)
      head :no_content
    else
      render json: @taxonomy.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @taxonomy.destroy

    head :no_content
  end

  private

  def set_taxonomy
    @taxonomy = Taxonomy.find(params[:id])
  end

  def taxonomy_params
    params.require(:taxonomy).permit(:title, :allow_multiple, :tags_recommendations, :tags_actions)
  end


end
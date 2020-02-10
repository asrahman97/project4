class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all
    json_response(@recipes)
  end

  # POST /recipes
  def create
    @recipe = Recipe.create!(recipe_params)
    json_response(@recipe, :created)
  end

  # GET /recipes/:id
  def show
    json_response(@recipe)
  end

  # PUT /recipes/:id
  def update
    @recipe.update(recipe_params)
    json_response(status: 'SUCCESS', message: 'updated the recipe')
  end

  # DELETE /recipes/:id
  def destroy
    @recipe.destroy
    json_response(status: 'SUCCESS', message: 'deleted the recipe')

  end

  private

  def recipe_params
    # whitelist params
    params.permit(:recipe_name, :rating, :difficulty_level, :prep_time, :cook_time, :total_time, :image_url, :video_url)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
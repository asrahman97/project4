class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  # def index
  #   # get current user recipes
  #   @recipes = current_user.recipes
  #   json_response(@recipes)
  # end
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  # def short_recipe
  #   @recipes_short = Recipe.where(prep_time: (less))
  # end

  # POST /recipes
  def create
    # create recipes belonging to current user
    puts current_user.user
    @recipe = current_user.recipes.create!(recipe_params)
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

  # remove `created_by` from list of permitted parameters
  def recipe_params
    params.require(:recipe).permit(:recipe_name, :rating, :difficulty_level, :prep_time, :cook_time, :total_time, :image_url, :video_url)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
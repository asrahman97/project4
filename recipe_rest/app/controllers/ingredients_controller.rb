class IngredientsController < ApplicationController
  before_action :set_recipe
  before_action :set_recipe_ingredient, only: [:show, :update, :destroy]

  # GET /recipes/:recipe_id/ingredients
  def index
    json_response(@recipe.ingredients)
  end

  # GET /recipes/:recipe_id/ingredients/:id
  def show
    json_response(@ingredient)
  end

  # POST /recipes/:recipe_id/ingredients
  def create
    @recipe.ingredients.create!(ingredient_params)
    # json_response(@recipe, :created)
    json_response(status: "SUCCESS", message: 'ingredient created successfully.')

  end

  # PUT /recipes/:recipe_id/ingredients/:id
  def update
    @ingredient.update(ingredient_params)
    json_response(status: 'SUCCESS', message: 'ingredient updated successfully.')
  end

  # DELETE /recipes/:recipe_id/ingredients/:id
  def destroy
    @ingredient.destroy
    json_response(status: 'SUCCESS', message: 'ingredient deleted successfully.')
  end

  private

  def ingredient_params
    params.permit(:ingredient_name)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_recipe_ingredient
    @ingredient = @recipe.ingredients.find_by!(id: params[:id]) if @recipe
  end
end
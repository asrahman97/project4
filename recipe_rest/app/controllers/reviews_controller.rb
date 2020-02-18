class ReviewsController < ApplicationController
  before_action :set_recipe
  before_action :set_recipe_review, only: [:show, :update, :destroy]

  # GET /recipes/:recipe_id/reviews
  def index
    json_response(@recipe.reviews)
  end

  # GET /recipes/:recipe_id/reviews/:id
  def show
    json_response(@review)
  end

  # POST /recipes/:recipe_id/reviews
  def create
    recipe = @recipe.reviews.create!(review_params)

    # json_response(@recipe, :created)
    # json_response(status: "SUCCESS", message: 'review created successfully.')
    json_response(recipe)
  end

  # PUT /recipes/:recipe_id/reviews/:id
  def update
    recipe = @review.update(review_params)
    # json_response(status: 'SUCCESS', message: 'review updated successfully.')
    json_response(recipe)
  end


  # DELETE /recipes/:recipe_id/reviews/:id
  def destroy
    @review.destroy
    json_response(status: 'SUCCESS', message: 'review deleted successfully.')
  end

  private

  def review_params
    params.permit(:review_message, :score, :created_by, :user_id, :recipe_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_recipe_review
    @review = @recipe.reviews.find_by!(id: params[:id]) if @recipe
  end
end
import React, { Component } from "react";
import { Link } from "react-router-dom";
import EditRecipeForm from "./editRecipe";
import Reviews from "./reviews";
import { Route } from 'react-router-dom';

class Recipe extends Component {
  constructor(props) {
    super(props);

    this.state = {
      recipe: null,
      recipeDate: null,
      recipeId: null,
      editing: false,
      // likes: 0,
      reviews: []
    };
  }

  componentDidMount = async () => {
    const recipe = await this.props.getRecipe(this.props.match.params.id);
    const singleRecipe = this.props.recipe;
    console.log(singleRecipe);

    const recipeId = this.props.match.params.id;
    // const setRecipeDate = new Date(recipe.createdAt);
    // const recipeDate = setRecipeDate.toDateString();
    this.setState({
      recipe: singleRecipe,
      recipeId
      // recipeDate
    });
  };

  setRecipe = newRecipe => {
    this.setState({
      recipe: newRecipe,
      editing: false
    });
  };

  editForm = e => {
    e.preventDefault();
    this.setState({
      editing: true
    });
  };

  reset = () => {
    this.setState({
      recipe: null,
      recipeId: null,
      // recipeDate: null,
      editing: false
    });
  };

  render() {
    // console.log(this.state.recipe);
    // console.log(this.props.currentUser.id)
    return (
      <div>
        <Link className="back-nav" to="/">
          Back
        </Link>
        {this.state.recipe && (
          <div className="recipe-card">
            <h2>{this.state.recipe.recipe_name}</h2>
            <img className="single-img" src={this.state.recipe.image_url} />
            {/* <p>
            <span className="bold">Diff:</span>{this.state.recipe.difficulty_level}</p> */}
            <p>
              <span className="bold">Rating:</span> {this.state.recipe.rating}
            </p>
            <p>
              <span className="bold">Difficulty Level:</span>{" "}
              {this.state.recipe.difficulty_level}
            </p>
            <p>
              <span className="bold">Prep Time in Minutes:</span>{" "}
              {this.state.recipe.prep_time}
            </p>
            <p>
              <span className="bold">Cook Time in Minutes:</span>{" "}
              {this.state.recipe.cook_time}
            </p>
            <div id="video">
              <iframe
                id="ytplayer"
                // src={this.state.recipe.video_url}
                src='https://www.youtube.com/embed/jMq8lEu-of0'
                frameborder="0"
              ></iframe>
            </div>
            <p>
              <span className="bold">Rating:</span> {this.state.recipe.rating}
            </p>
            {/* <p>
              <span className="bold">Date:</span> {this.state.recipeDate}
            </p> */}
            {/* {this.props.currentUser && (
              <LikeButton
                currentUser={this.props.currentUser}
                recipes={this.props.recipes}
                recipeId={this.props.match.params.id}
                setPost={this.setPost}
                updatePost={this.props.updatePost}
              />
            )} */}
            <Reviews
              recipeId={this.props.match.params.id}
              createReview={this.props.createReview}
              updateReview={this.props.updateReview}
              deleteReview={this.props.deleteReview}
              getReviews={this.props.getReviews}
              reviews={this.props.reviews}
              currentUser={this.props.currentUser}
            />

            
            {parseInt(localStorage.getItem("user_id")) === parseInt(this.state.recipe.created_by) ? (
              <div>
                <Link to="/">
                  <button
                    className="delete"
                    onClick={e => {
                      e.preventDefault();
                      let safeguard = window.confirm(
                        "You are about to delete this recipe! Press OK to confirm."
                      );
                      if (safeguard === true) {
                        this.props.deleteRecipe(e, this.state.recipeId);
                        this.reset();
                      }
                    }}
                  >
                    Delete
                  </button>
                </Link>
                <button className="edit" onClick={e => this.editForm(e)}>
                  Edit
                </button>
                  {this.state.editing && (
                    <Route path="/recipes/:id" render={(props) =>
                      <EditRecipeForm
                        updateRecipe={this.props.updateRecipe}
                        recipeId={this.props.match.params.id}
                        recipes={this.props.recipes}
                        setRecipe={this.setRecipe}
                      />} />
                )}
              </div>
            ) : (
              <p>You are not authorized to modify this recipe.</p>
            )}
          </div>
        )}
      </div>
    );
  }
}

export default Recipe;

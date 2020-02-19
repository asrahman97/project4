import React, { Component } from "react";
import { Link } from "react-router-dom";
import CreateRecipe from "./createRecipe";
import Masonry from "react-masonry-css";
import { getUser } from "../services/api_helper";
// import CreateRecipe from './createRecipe'

const breakpointColumnsObj = {
  default: 4,
  1100: 3,
  700: 2,
  500: 1
};

class RecipeGallery extends Component {
  constructor(props) {
    super(props);

    this.state = {
      recipes: null,
      addingRecipe: false
    };
  }

  

  render() {
    console.log(this.props);

    return (
      <div className="gallery-header">
        <p className="header">All the Delicious Dishes</p>
        <main className="gallery-space">
          {this.props.recipes ? (
            <div className="gallery-page">
              <div className="gallery">
                <Masonry
                  breakpointCols={breakpointColumnsObj}
                  className="my-masonry-grid"
                  columnClassName="my-masonry-grid_column"
                >
                  {this.props.recipes.map((recipe, index) => {
                    return (
                      <div key={index} className="recipe-card">
                        <h2 className="name">{recipe.recipe_name}</h2>
                        <img
                          className="gallery-img"
                          src={recipe.image_url}
                        ></img>
                        <button className="post-link">
                          <Link to={`/recipes/${recipe.id}`}>Go to Post</Link>
                        </button>
                        <p>{recipe.user_name}</p>
                        <img src={recipe.user_image} />
                      </div>
                    );
                  })}
                </Masonry>
              </div>

              {this.props.currentUser && (
                <div className="add-recipe">
                  {this.state.addingRecipe ? (
                    <CreateRecipe
                      createRecipe={this.props.createRecipe}
                      currentUser={this.props.currentUser}
                    />
                  ) : (
                    <button
                      className="add-button"
                      onClick={() => this.setState({ addingRecipe: true })}
                    >
                      Add a Recipe of your own, chef <br />
                      <span className="plus-button">+</span>
                    </button>
                  )}
                </div>
              )}
            </div>
          ) : (
            <div>Loading...</div>
          )}
        </main>
      </div>
    );
  }
}

export default RecipeGallery;

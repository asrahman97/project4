import React, { Component } from "react";
import { Link } from "react-router-dom";
import CreateRecipe from "./createRecipe";
import Masonry from "react-masonry-css";
// import CreateRecipe from './createRecipe'

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
                  breakpointCols={4}
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

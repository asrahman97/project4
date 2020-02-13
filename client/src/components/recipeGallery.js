import React, {Component} from 'react'
import { Link } from 'react-router-dom'
// import CreateRecipe from './createRecipe'

class RecipeGallery extends Component {
  constructor(props) {
    super(props)

    this.state = {
      recipes: null,
      addingPost: false
    }
  }


  render() {
    console.log(this.props);
    
    return (
      <div className="gallery-header">
        <p className="header">All the Delicious Dishes</p>
        <main className="gallery-space">
          {this.props.recipes ? (
            <div className="gallery">
              {this.props.recipes.map((recipe, index) => {
                return (
                  <div key={index} className="social_card">
                    <h2 className="name">{recipe.recipe_name}</h2>
                    <img className="gallery-img" src={recipe.image_url}></img>
                    <button className="post-link"><Link to={`/recipes/${recipe.id}`}>Go to Post</Link></button> 
                  </div>)
              })}
              {/* {this.props.currentUser &&
                <div className="add-post">
                {this.state.addingPost ?
                <CreatePost
                createPost={this.props.createPost}
                currentUser={this.props.currentUser} 
                  /> :
                  <button className="add-button" onClick={() => (this.setState({ addingPost: true }))}>Add a Post <br /><span className="plus-button">+</span></button>
                }
                
                
              </div>
              } */}
              
            </div>
          ) : (
              <div>Loading...</div>
            )}

        </main>
      </div>
    )
  }

}

export default RecipeGallery;
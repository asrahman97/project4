import React, { Component } from 'react';

class EditRecipeForm extends Component {
  constructor(props) {
    super(props);

    this.state = {
      created_by: '',
      recipe_name: '',
      rating: '',
      difficulty_level: '',
      prep_time: '',
      cook_time: '',
      total_time: '',
      image_url: "",
      video_url: ""
    }
  }

  componentDidMount() {
    this.setFormData();
    // console.log(this.props.recipes);

  }
  
  setFormData = () => {
    if (this.props.recipes.length) {
      const { recipe_name, rating, difficulty_level, prep_time, cook_time, total_time, image_url, video_url } = this.props.recipes.find(recipe => {
        console.log(recipe);
        
        return recipe.id === parseInt(this.props.recipeId)
      })

      const created_by = localStorage.getItem("user_id")
      console.log(created_by);
      

      this.setState({
        created_by,
        recipe_name,
        rating,
        difficulty_level,
        prep_time,
        cook_time,
        total_time, 
        image_url,
        video_url
      })
    }
  }

  handleChange = (e) => {
    let { name, value } = e.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    return (
      
      <div>
        <form className="edit-form" onSubmit={(e) => {
          e.preventDefault();
          this.props.updateRecipe(this.props.recipeId, this.state)
          this.props.setRecipe(this.state)
        }}>
          
          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="recipe_name"
            value={this.state.recipe_name}
            onChange={this.handleChange}
            placeholder="Recipe Name"
          />

          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="rating"
            value={this.state.rating}
            onChange={this.handleChange}
            placeholder="Rating"
          />

          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="difficulty_level"
            value={this.state.difficulty_level}
            onChange={this.handleChange}
            placeholder="Difficulty Level"
          />

          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="prep_time"
            value={this.state.prep_time}
            onChange={this.handleChange}
            placeholder="Prep Time"
          />

          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="cook_time"
            value={this.state.cook_time}
            onChange={this.handleChange}
            placeholder="Cook Time"
          />


          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="image_url"
            value={this.state.image_url}
            onChange={this.handleChange}
            placeholder="Image"
          />

          <input className="edit"
            // autocomplete="off"
            type="textarea"
            name="video_url"
            value={this.state.video_url}
            onChange={this.handleChange}
            placeholder="Video"
          />

          <input className="create" type="submit" />
        </form>
      </div>
    )
  }
}

export default EditRecipeForm;
import React, { Component } from 'react';

export default class CreateRecipe extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: this.props.currentUser.user,
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

  handleChange = (e) => {
    let { name, value } = e.target;
    this.setState({
      [name]: value
    })
  }

  reset() {
    this.setState({
      user: this.props.currentUser.user,
      recipe_name: '',
      rating: '',
      difficulty_level: '',
      prep_time: '',
      cook_time: '',
      total_time: '',
      image_url: "",
      video_url: ""
    })
  }

  render() {
    return (
      <div>
        <form className="create-form" onSubmit={(e) => {
          e.preventDefault();
          this.props.createRecipe(this.state);
          this.reset();
        }}>

          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="recipe_name"
            value={this.state.recipe_name}
            onChange={this.handleChange}
            placeholder="Recipe Name"
          />

          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="rating"
            value={this.state.rating}
            onChange={this.handleChange}
            placeholder="Rating"
          />

          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="difficulty_level"
            value={this.state.difficulty_level}
            onChange={this.handleChange}
            placeholder="Difficulty Level"
          />

          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="prep_time"
            value={this.state.prep_time}
            onChange={this.handleChange}
            placeholder="Prep Time"
          />

          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="cook_time"
            value={this.state.cook_time}
            onChange={this.handleChange}
            placeholder="Cook Time"
          />


          <input className="add"
            // autocomplete="off"
            type="textarea"
            name="image_url"
            value={this.state.image_url}
            onChange={this.handleChange}
            placeholder="Image"
          />

          <input className="add"
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
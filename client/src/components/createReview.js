import React, { Component } from "react";

class CreateReview extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user_id: "",
      review_message: "",
      score: "",
      created_by: ""
    };
  }

  componentDidMount = () => {
    if (this.props.currentUser) {
      const created_by = localStorage.getItem('user')
      console.log(created_by);
      
      const user_id = parseInt(localStorage.getItem("user_id"));
      this.setState({
        user_id, created_by
      });
    }
  };

  handleChange = e => {
    let { name, value } = e.target;
    this.setState({
      [name]: value
    });
  };

  resetReview = () => {
    this.setState({
      review_message: "",
      score: ""
    });
  };

  render() {
    console.log(this.state);
    console.log(this.props);
    console.log(this.props.currentUser)

    return (
      <div>
        <form
          onSubmit={e => {
            e.preventDefault();
            this.props.createReview(this.props.recipeId, this.state);
            this.resetReview();
          }}
        >
          <input
            className="review"
            autocomplete="off"
            type="textarea"
            name="review_message"
            value={this.state.review_message}
            onChange={this.handleChange}
            placeholder="add review"
          />

          <input
            className="score"
            autocomplete="off"
            type="textarea"
            name="score"
            value={this.state.score}
            onChange={this.handleChange}
            placeholder="add recipe score"
          />

          <input className="send-review" type="submit" />
        </form>
      </div>
    );
  }
}

export default CreateReview;

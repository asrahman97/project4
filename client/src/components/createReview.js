import React, { Component } from "react";

class CreateReview extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      review_message: "",
      score: ""
    };
  }

  componentDidMount = () => {
    if (this.props.currentUser) {
      this.setState({
        user: this.props.currentUser.user
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

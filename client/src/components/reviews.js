import React, { Component } from "react";
import CreateReview from "./createReview";

class Reviews extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      review_message: "",
      score: ""
    };
  }

  componentDidMount = async () => {
    await this.props.getReviews(this.props.recipeId);
  };

  render() {
    console.log(this.props.reviews);

    return (
      
      <div>
        {" "}
        {this.props.reviews && (
          <div className="reviews">
            <h2>Reviews</h2>
            
            {this.props.reviews.map((review, index) => {
              return (
                <div key={index} className='review-box'>
                  <p><span className="bold">{review.score}:</span> {review.review_message}</p>
                  {this.props.currentUser && this.props.currentUser.user === review.user &&
                    <button className="delete" onClick={(e) => {
                      e.preventDefault();
                      let safeguard = window.confirm('You are about to delete this review! Press OK to confirm.');
                      if (safeguard === true) {
                        this.props.deleteReview(e, this.props.recipeId, review.id);
                      }
                    }
                    }>
                      Delete
                  </button>}
                </div>
              );
            })}{" "}
          </div>
        )}
        {this.props.currentUser && (
          <CreateReview
            recipeId={this.props.recipeId}
            createReview={this.props.createReview}
            currentUser={this.props.currentUser}
          />
        )}{" "}
      </div>
    );
  }
}

export default Reviews;

import React, { Component } from "react";
import {
  registerUser,
  loginUser,
  verifyUser,
  recipeSingle,
  recipesAll,
  recipesCreate,
  recipeUpdate,
  recipeDelete,
  reviewsRecipe,
  reviewCreate,
  reviewDelete
} from "./services/api_helper";
import { Route, Link, withRouter } from "react-router-dom";
import "./App.css";
import Login from "./components/login";
import Register from "./components/register";
import Navigation from "./components/navigation";
import RecipeGallery from "./components/recipeGallery";
import Recipe from "./components/singleRecipe";
import Footer from "./components/footer";
// import Welcome from 'react-welcome-page'


class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      password: "",
      currentUser: null,
      errorText: "",
      recipe: null,
      recipes: [],
      reviews: []
    };
  }

  handleRegister = async (e, registerData) => {
    e.preventDefault();
    const data = await registerUser(registerData);
    // if (!currentUser.errorMessage) {
    console.log(currentUser)
    const currentUser = {user: data.user, id: data.id }
    this.setState({ currentUser });
    // this.props.history.push('/recipes');
    // } else {
    //   this.setState({ errorText: currentUser.errorMessage })
    // }
    // console.log("hey")
  };

  handleLogin = async (e, loginData) => {
    e.preventDefault();
    const currentUser = await loginUser(loginData);
    console.log(currentUser);
    this.setState({  currentUser });
    // this.props.history.push("/");
  };

  handleLogout = () => {
    this.setState({
      currentUser: null
    });
    localStorage.removeItem("authToken");
    localStorage.removeItem("user");
  };

  getRecipe = async id => {
    const recipe = await recipeSingle(id);
    this.setState({
      recipe
    });
  };

  getRecipes = async () => {
    const recipes = await recipesAll();
    this.setState({
      recipes
    });
  };

  createRecipe = async recipe => {
    const newRecipe = await recipesCreate(recipe);
    const recipes = this.state.recipes.slice(0);
    recipes.push(newRecipe);
    this.setState({
      recipes
    });
  };

  updateRecipe = async (id, updates) => {
    const newRecipe = await recipeUpdate(id, updates);
    this.setState({
      recipes: this.state.recipes.map(recipe => (
        recipe.id === parseInt(id) ? newRecipe : recipe
      )),
      recipe: newRecipe
    })
  }

  deleteRecipe = async (e, id) => {
    e.preventDefault();
    await recipeDelete(id);
  }


  getReviews = async (id) => {
    const reviews = await reviewsRecipe(id);
    this.setState({
      reviews
    })
  }
  
  createReview = async (id, review) => {
    const newReview = await reviewCreate(id, review);
    const reviews = this.state.reviews;
    reviews.push(newReview);
    this.setState({
      reviews
    })
  }
  
  deleteReview = async (e, reviewId, id) => {
    console.log(reviewId);
    console.log(id);

    e.preventDefault();
    await reviewDelete(reviewId, id);
    let something = this.state.reviews;
    const reviews = something.filter(review => review.id !== id);
    console.log(reviews);
    this.setState({
      reviews
    })
  }



  componentDidMount() {
    verifyUser();
    this.getRecipes();
    console.log(localStorage.getItem("user"));

    if (localStorage.getItem("authToken")) {
      const user = localStorage.getItem("user");
      // const user1 = { user };
      user &&
        this.setState({
          currentUser: user
        });
    }
  }

  render() {
    console.log(this.state.currentUser);
    return (
      <div className="App">
        {/* <Welcome
          loopDuration={1000}
          data={[
            {
              text: "Welcome",
              imageAnimation: "fadeIn",
              textAnimation: "fadeIn",
              backgroundColor: "rgb(249, 216, 77)",
              textColor: "#765907",
              image: require("./assets/taco.png")
            },
            {
              text: "To",
              imageAnimation: "fadeIn",
              textAnimation: "fadeIn",
              backgroundColor: "rgb(228, 234, 236)",
              textColor: "#37443B",
              image: require("./assets/riceBall.png")
            },
            {
              backgroundColor: "rgb(67, 167, 68)",
              textColor: "#09311B",
              text: "Recipe",
              imageAnimation: "fadeIn",
              textAnimation: "fadeIn",
              image: require("./assets/leafyGreen.png")
            },
            {
              text: "Serendipity",
              image: require("./assets/pot-of-food.png"),
              backgroundColor: "rgb(165, 43, 20)",
              textColor: "#FDF0EE",
              imageAnimation: "fadeIn",
              textAnimation: "fadeIn"
            }
          ]}
        /> */}
        {this.state.currentUser ? (
          <div>
            {/* <h1>Hello, {this.state.currentUser.user}</h1> */}
            <h1>Hello, {localStorage.getItem("user")}</h1>
            <button onClick={this.handleLogout}>Logout!!</button>
          </div>
        ) : (
          <nav>
            <Link to="/register">
              <button>Register</button>
            </Link>
            <Link to="/login">
              <button>Login</button>
            </Link>
          </nav>
        )}
        <Route
          path="/login"
          render={() => <Login handleLogin={this.handleLogin} />}
        />
        <Route
          path="/register"
          render={() => (
            <Register
              handleRegister={this.handleRegister}
              errorText={this.state.errorText}
            />
          )}
        />
        <Navigation />
        <Route
          exact
          path="/"
          render={props => (
            <RecipeGallery
              // {...props}
              currentUser={this.state.currentUser}
              recipes={this.state.recipes}
              createRecipe={this.createRecipe}
            />
          )}
        />
        <Route
          path="/recipes/:id"
          render={props => (
            <Recipe
              {...props}
              getRecipe={this.getRecipe}
              getRecipes={this.getRecipes}
              currentUser={this.state.currentUser}
              recipe={this.state.recipe}
              recipes={this.state.recipes}
              updateRecipe={this.updateRecipe}
              deleteRecipe={this.deleteRecipe}
              createReview={this.createReview}
              getReviews={this.getReviews}
              deleteReview={this.deleteReview}
              reviews={this.state.reviews}
            />
          )}
        />
        Hello world, please help
        <Footer />
      </div>
    );
  }
}

export default withRouter(App);

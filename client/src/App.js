import React, { Component } from "react";
import {
  registerUser,
  loginUser,
  verifyUser,
  recipeSingle,
  recipesAll
} from "./services/api_helper";
import { Route, Link, withRouter } from "react-router-dom";
import "./App.css";
import Login from "./components/login";
import Register from "./components/register";
import Navigation from "./components/navigation";
import RecipeGallery from "./components/recipeGallery";
import Recipe from './components/singleRecipe'
import Footer from './components/footer'

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
      comments: []
    };
  }

  handleRegister = async (e, registerData) => {
    e.preventDefault();
    const currentUser = await registerUser(registerData);
    // if (!currentUser.errorMessage) {
    // console.log(currentUser)
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
    this.setState({ currentUser });
    // this.props.history.push("/recipes");
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

  componentDidMount() {
    verifyUser();
    this.getRecipes()
    if (localStorage.getItem("authToken")) {
      const user = localStorage.getItem("user");
      const user1 = { user };
      user &&
        this.setState({
          currentUser: user1
        });
    }
  }

  render() {
    console.log(this.state.currentUser);
    return (
      <div className="App">
        {this.state.currentUser ? (
          <div>
            <h1>Hello, {this.state.currentUser.user}</h1>
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
        <Route exact path="/" render={(props) =>
        <RecipeGallery
            // {...props}
            currentUser={this.state.currentUser}
            recipes={this.state.recipes}
          // createRecipe={this.createRecipe}
          />
          }/>
        
        <Route  path="/recipes/:id" render={(props) =>
          
          <Recipe {...props}
            getRecipe={this.getRecipe}
            getRecipes={this.getRecipes}
            currentUser={this.state.currentUser}
            recipe={this.state.recipe}
            recipes={this.state.recipes}
            updateRecipe={this.updateRecipe}
            deleteRecipe={this.deleteRecipe}
            createComment={this.createComment}
            getComments={this.getComments}
            deleteComment={this.deleteComment}
            comments={this.state.comments}
            
            />}
          />
          Hello world, please help
          <Footer />
      </div>
    );
  }
}

export default App;

import React, { Component } from "react";
import { registerUser, loginUser, verifyUser } from "./services/api_helper";
import { Route, Link, withRouter } from "react-router-dom";
import "./App.css";
import Login from "./components/login";
import Register from './components/register'

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      password: "",
      currentUser: null,
      errorText: ""
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
  }

  handleLogin = async (e, loginData) => {
    e.preventDefault();
    const currentUser = await loginUser(loginData);
    console.log(currentUser)
    this.setState({ currentUser });
    // this.props.history.push("/recipes");
  }

  handleLogout = () => {
    this.setState({
      currentUser: null
    })
    localStorage.removeItem('authToken');
    localStorage.removeItem('user');
  }

  componentDidMount() {
    verifyUser();
    if (localStorage.getItem('authToken')) {
      const user = localStorage.getItem('user');
      const user1 = { user };
      user && this.setState({
        currentUser: user1
      })
    }
  }

  render() {
    console.log(this.state.currentUser)
    return (
      <div className="App">

{ this.state.currentUser ?
          <div>
            <h1>Hello, {this.state.currentUser.user}</h1>
            <button onClick={this.handleLogout}>Logout!!</button>
          </div>
          :
            <nav>
              <Link to="/register"><button>Register</button></Link>
              <Link to="/login"><button>Login</button></Link>
            </nav>
        }
        <Route path="/login" render={() => (
          <Login
            handleLogin={this.handleLogin}
          />
        )} />
        <Route path="/register" render={() => (
          <Register
            handleRegister={this.handleRegister}
            errorText={this.state.errorText}
          />
        )}/>

        Hello world, please help
    
      </div>
    );
  }
}

export default App;

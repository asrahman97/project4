import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class Login extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      password: ""
    }
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({ [name]: value });
  }

  render() {
    return (
      <form onSubmit={(e) => this.props.handleLogin(e, this.state)}>
        <h2>Login!</h2>
        <label htmlFor="user">Username</label>
        <input
          type="text"
          name="user"
          value={this.state.user}
          onChange={this.handleChange}
        />
        <label htmlFor="password">Password</label>
        <input
          type="password"
          name="password"
          value={this.state.password}
          onChange={this.handleChange}
        />
        <button>Submit</button>
        <Link to="/register">Register</Link>
      </form>
    )
  }
}

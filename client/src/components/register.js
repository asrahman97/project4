import React, { Component } from 'react';
import {Link} from 'react-router-dom'

export default class Register extends Component {
  constructor(props) {
    super(props);

    this.state = {
      user: "",
      password: ""
    }
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    // Same as const name = e.target.name // const value = e.target.value
    this.setState({
      [name]: value
    })
  }

  render() {
    return (
      <div>
        {this.props.errorText && <p>{this.props.errorText}</p>}
        <form onSubmit={(e) => this.props.handleRegister(e, this.state)}>
          <h2>Register!</h2>
          <label htmlFor="user">user</label>
          <input
            type="text"
            name="user"
            value={this.state.user}
            onChange={this.handleChange}
          />
          <label htmlFor="password">password</label>
          <input
            type="password"
            name="password"
            value={this.state.password}
            onChange={this.handleChange}
          />
          <button>Submit!</button>
        </form>
        <Link to ='/'>Home</Link>
      </div>
    )
  }
}

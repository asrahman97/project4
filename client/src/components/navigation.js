import React, {Component} from "react";
import { render } from "@testing-library/react";

export default class Navigation extends Component {
  constructor(props) {
    super(props)

    this.state = {

    }
  }
  render() {
    return (
      <div>
        <form>
          <input className="search-bar" type="text" />
          <button className="search-button" type="submit">
            Search
          </button>
        </form>
      </div>
    );
  }
}

// export default Navigation;

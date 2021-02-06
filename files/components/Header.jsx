import { Component } from 'react';
import { Grid } from "@material-ui/core";

class Header extends Component {
  state = {}
  render() {
    return (
      <div>
        <Grid container className="header">
          Header
        </Grid>
      </div>
    );
  }
}

export default Header;
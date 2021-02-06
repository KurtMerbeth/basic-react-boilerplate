import { Component } from "react";
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { Grid, Box } from "@material-ui/core";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Main from "./components/Main";
import './style.scss';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  
  render() {
    return (
      <div class="app">
        <Box className="appBox">
        <Header />

        <BrowserRouter>
          <Switch>

            <Route exact path="/">
              <Main />
            </Route>

            <Route path="/menu">
              <div>Menu</div>
            </Route>

          </Switch>
        </BrowserRouter>

        <Footer />
        </Box>
      </div>
    );
  }
}

export default App;
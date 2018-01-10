import React, { Component } from 'react';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Home from './components/Home';


class App extends Component {
  render() {
    return (
    	<Router>
	      <div className="App">
	      	<div className="app-body">
	      		<div className="container>">
	      		    <Route exact path="/" component={Home} />
	      		    
	      		</div>
	      	</div>
	      </div>
      	</Router>
    );
  }
}

export default App;

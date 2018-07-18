import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import UserManager from './component/UserManager/UserManager'

class App extends Component {
  render() {
    return (
      <div className="App">
      <UserManager/>
      </div>
    );
  }
}

export default App;

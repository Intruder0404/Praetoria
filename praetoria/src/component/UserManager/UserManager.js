import React    from "react";
import { FormControl,ControlLabel} from 'react-bootstrap';
import { Button, Form, FormGroup, Label, Input, FormText,ButtonGroup } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import User from '../../models/UserManager/User'

class UserManager extends React.Component {
  constructor(props,context) {
    super(props);
    this.state = {user: new User()};

    //this.handleChange = this.handleChange.bind(this);
    this.addUser = this.addUser.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event){
      let user = this.state.user;
      user[event.target.name] = event.target.value;
      this.setState({user:user});
  }
  addUser(event){
      event.preventDefault();
      fetch('http://localhost:3001/users', {
      method: 'POST',
      headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          user:this.state.user
        })
      })
  }
  render() {
    return(
        <div className="user-manager">
          <h1>UserManager</h1>
          <form onSubmit={this.addUser}>
          <FormGroup
          >
              <ControlLabel bsStyle="default">Username</ControlLabel><FormControl type="Text" name="username" label="Username" onChange={this.handleChange} /><br/>
              <ControlLabel bsStyle="default">First Name</ControlLabel><FormControl type="Text" name="first_name" label="First Name" onChange={this.handleChange} /><br/>
              <ControlLabel bsStyle="default">Last Name</ControlLabel><FormControl type="Text" name="last_name" label="Last Name" onChange={this.handleChange} /><br/><br/>
              <ControlLabel bsStyle="default">Password</ControlLabel><FormControl type="Text" name="password" label="Password" onChange={this.handleChange} /><br/>
              <ControlLabel bsStyle="default">Confirm Password</ControlLabel><FormControl type="Text" name="confirm_password" label="Confirm Password"/><br/>
              <ControlLabel bsStyle="default">E-Mail</ControlLabel><FormControl type="Text" name="email" label="E-Mail" onChange={this.handleChange} /><br/>
              <ControlLabel bsStyle="default">Address</ControlLabel><FormControl type="Text" name="address" label="Address" onChange={this.handleChange}/><br/>
              <ControlLabel bsStyle="default">Payment</ControlLabel><FormControl type="Text" name="payment" label="Payment" onChange={this.handleChange}/><br/>
              <ButtonGroup><Button type="submit">Accept</Button><Button>Cancel</Button></ButtonGroup>
              </FormGroup>
          </form>
        </div>
      )
  }
}

export default UserManager;

import React, { useState, useEffect } from 'react';
import { withStyles,WithStyles,Theme,Toolbar,AppBar,Button,Link } from '@material-ui/core';
import {useRoutes,A,navigate} from 'hookrouter';
import Router from '../components/router';
import history from 'history';
import '../index.css';
// make sure you include the timeline stylesheet or the timeline will not be styled
const styles = {
  Menu: {
    backgroundColor: 'purple',
	position: 'relative' as 'relative',
	color:'gold'
  },
  buttonStyle:{
	color:'gold'
  }
};

type ClassNames = { classes: {[className in keyof typeof styles]:string}}

const handleOnClick_navigateTo = (url : string): void =>{
	navigate(url);
}

const Menu = (props : ClassNames) => {
	//const [title,setTitle] = useState('Praetoria');
	const{ classes } = props;
	
	useEffect(()=>{
		//alert('allo');
	})
	
	return(
		<AppBar className={classes.Menu}>
			<Toolbar>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Legion')}>Legion</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Familles')}>Familles</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Legionnaire')}>Le Légionaire</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Campement')}>Campement</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Forum')}>Joindre</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Espace')}>Espace Personel</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Forum')}>Forum</Button>
				<Button className={classes.buttonStyle} onClick = {() => handleOnClick_navigateTo('/Varia')}>Journal</Button>
			</Toolbar>
		</AppBar>
	);
	
}

export default withStyles( styles )( Menu );
import React, { useState, useEffect } from 'react';
import MockData from'../mockdata/mockdata';
import '../index.css';
import { withStyles,WithStyles,Theme,Toolbar,AppBar,Button,Link } from '@material-ui/core';
// make sure you include the timeline stylesheet or the timeline will not be styled

const styles = {
  FamilyMenu: {
    backgroundColor: 'purple',
	position: 'relative' as 'relative',
	fontFamily:'MyFontGreek',
	color:'gold',
	textAlign:'center' as 'center'
  },
  buttonStyle:{
	color:'gold'
  }
};
type ClassNames = { classes: {[className in keyof typeof styles]:string}}

const Familles = (props : ClassNames) => {
	//const famillies = MockData();
	const [famillies,setFamillies] = useState(MockData());
	const{ classes } = props;
	
	return(
		<div className={classes.FamilyMenu}>
			{famillies.map((family) => (
				<Button className={classes.buttonStyle}>{family}</Button>
			))}
		</div>
	);
	
}

export default withStyles( styles )( Familles );
//export default MainPage;
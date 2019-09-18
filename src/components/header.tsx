import React, { useState, useEffect } from 'react';
import { withStyles } from '@material-ui/styles';
import '../index.css';
// make sure you include the timeline stylesheet or the timeline will not be styled
const styles = {
  header: {
    width: '100%',
	height:'125px',
	margin:'0',
    backgroundColor: 'purple',
	color:'gold',
	textAlign:'center' as 'center'
  },
  title: {
	  position:'relative' as 'relative',
	  top:'50%'
  }
};

type ClassNames = { classes: {[className in keyof typeof styles]:string}}

const Header = (props : ClassNames) => {
	const [title,setTitle] = useState('Praetoria');
	const{ classes } = props;
	
	useEffect(()=>{
		//alert('allo');
	})
	return(
		<div className={classes.header}>
			<h1 className={classes.title}>{title}</h1>
		</div>
	);
	
}

export default withStyles( styles )( Header );
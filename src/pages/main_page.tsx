import React, { useState, useEffect } from 'react';
import Header from '../components/header';
import Menu from '../components/menu';
import {useRoutes,A,navigate} from 'hookrouter';
import Router from '../components/router';
import '../index.css';
// make sure you include the timeline stylesheet or the timeline will not be styled


export default function MainPage(){
	const [title,setTitle] = useState('Praetoria');
	
	useEffect(()=>{
		//alert('allo');
	})
	return(
		<div>
			<Header/>
			<Menu/>
			<Router/>
		</div>
	);
	
}
//export default MainPage;
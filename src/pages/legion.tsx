import React, { useState, useEffect } from 'react';
import { withStyles } from '@material-ui/styles';
// make sure you include the timeline stylesheet or the timeline will not be styled
const styles = {
  legionBody: {
	  position:'relative' as 'relative',
	  left:'20%',
	  width:'60%'
  },
  paragraphs: {
  }
};

type ClassNames = { classes: {[className in keyof typeof styles]:string}}

const Legion = (props : ClassNames) => {
	const [title,setTitle] = useState('Praetoria');
	const{ classes } = props;
	
	return(
		<div className={ classes.legionBody }>
			<h3>La Légion</h3>
			<p>
				La Légion Praetoria est une Guilde participant au grandeur nature de Bicolline.
			</p>
			<p>
				Le thème de ce groupe est inspiré de l'Empire Romain mais plus spécifiquement par la Garde Praetorienne au moment du mi-Empire.
			</p>
			<p>
				Les Praetoriens était reconnu comme l'Élite militaire, les protecteur de l'empereur et de l'empire. 
				Ils était aussi connu comme étant un groupe dirigeant un énorme réseaux criminel. C'est un groupe qui avait 
				tellement d'influence que les praetoriens on déposé des Empereur jugé "tyrant".
			</p>
			
			<h3>
				Nos Couleur
			</h3>
			<p>
				Afin de démontrer notre richesse et notre puissance nous avons décidé de choisir le mauve comme couleur principale,
				la couleur la plus dispendieuse et ensuite pour faire ressortir notre beauté, l'or est utilisé en contraste, l'or
				étant un métal qui ne ternie pas projette d'avantage notre propérité.
			</p>
			<h3>
				Symbole
			</h3>
			<p>
				Se conformant à l'histoire, l'emblême de notre groupe est le scorpion au centre d'une couronne trimphale de laurier.
				Nous mettons aussi plusieurs autre symboles sur nos équipement comme des éclaire, des ailes d'or, la couronne de laurier
			</p>
		</div>
	);
	
}
export default withStyles( styles )( Legion );
//export default MainPage;
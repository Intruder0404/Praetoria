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

const Legionnaire = (props : ClassNames) => {
	const [title,setTitle] = useState('Praetoria');
	const{ classes } = props;
	
	return(
		<div className={ classes.legionBody }>
			<h3>
				Le Légionnaire
			</h3>
			<p>
				Le légionnaire est l'unité de base de l'armée Praetorienne. Un légionnaire est un individue ayant aquis<br/>
				sa citoyenneté suite à deux ans d'esclavage si celui-ci fu capturé, deux ans de service militaire compulsif<br/>
				si l'individue est la progéniture d'un individue ayant aquis sa citoyenneté, deux ans de réglementation si<br/>
				l'individue est arrivé avec une	famille en patronat ou finalement si il y a un acte sénatorial qui donne citoyenneté<br/>
				par dictat à l'individu.
				<br/>
				<br/>
				NB: Progéniture est un status réservé a un individu aillant un liens de sang. Les règles d'adoption traditionelle<br/>
				romaine n'étant pas légale.
			</p>
			
			<h3>
				Le parcours
			</h3>
			<p>
				diagramme qui montre esclave a legionnaire
				diagramme qui montre d'esclave, a citoyen, à chef de famille, à sénateur, à consule, à pro-consule, à Impérator
			</p>
			<h3>
				Équipement du Légionnaire
			</h3>
			<p>
				Description incluant photo de notre équipement standard suggéré
			</p>
		</div>
	);
	
}
export default withStyles( styles )( Legionnaire );
//export default MainPage;
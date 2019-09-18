import React from 'react';
import {useRoutes} from 'hookrouter';
import Home from '../pages/home';
import Legion from '../pages/legion';
import Familles from '../pages/Familles';
import Legionnaire from '../pages/legionnaire';
import Campement from '../pages/Campement';
import Forum from '../pages/Forum';
import EspacePersonel from '../pages/EspacePersonel';
import Varia from '../pages/Varia';
import NotFoundPage from '../pages/not_found_page';
// make sure you include the timeline stylesheet or the timeline will not be styled

const routes = {
	'/': () => <Home />,
	'/Legion': () => <Legion/>,
	'/Familles': () => <Familles/>,
	'/Legionnaire': () => <Legionnaire/>,
	'/Campement': () => <Campement/>,
	'/Forum': () => <Forum/>,
	'/Espace': () => <EspacePersonel/>,
	'/Varia': () => <Varia/>,
}

export default function Router() {
	const routeResult = useRoutes(routes);
	
	return routeResult||<NotFoundPage/>;
	
}

//export default withStyles( styles )( Router );
import React from 'react';
import ReactDOM from 'react-dom';
import { AppContainer } from 'react-hot-loader';
import './index.css';
import 'typeface-roboto';
//import * as serviceWorker from './serviceWorker';
import { Provider } from 'react-redux';
import configureStore from './Redux/configureStore';

import App from './Pages/Main/App';

//Font awesome images / icons
import { library } from '@fortawesome/fontawesome-svg-core';
import {
    faEnvelope, faKey, faCoffee, faQuestion, faMapMarkerAlt, faPlus,
    faAngleDown, faSearch, faPencilAlt, faFilter, faTimesCircle,
    faFileExcel, faTrashAlt, faTimes
} from '@fortawesome/free-solid-svg-icons';


const store = configureStore({});

function renderApp() {
    library.add(
        faEnvelope, faKey, faCoffee, faQuestion, faMapMarkerAlt,
        faPlus, faAngleDown, faSearch, faPencilAlt, faFilter,
        faTimesCircle, faFileExcel, faTrashAlt, faTimes
    );
    ReactDOM.render((
        <Provider store={store}>
            <AppContainer>
                <App />
            </AppContainer>
        </Provider>
    ), document.getElementById('root'));
}

renderApp();

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
//serviceWorker.unregister();

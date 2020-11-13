import { applyMiddleware, combineReducers, compose, createStore } from 'redux';
import thunk from 'redux-thunk';

import { StoreState } from './types';
import GlobalReducer from './reducers/globalReducer';
import UserReducer from './reducers/userReducer';


export default function configureStore(initialState: object) {

    const middleware = [thunk];

    // In development, use the browser's Redux dev tools extension if installed
    // const enhancers: StoreEnhancer<{}, {}>;
    /*const isDevelopment = process.env.NODE_ENV === 'development';
    if (isDevelopment && typeof window !== 'undefined' && window.devToolsExtension) {
    enhancers.push(window.devToolsExtension());
    }*/

    // Ne pas oublier d'aller ajouter le nouveau state au type StoreState qui est situé dans le fichier types/index.ts 
    // Les types définis dans types/index.ts sont générique au projet entier.
    const rootReducer = combineReducers<StoreState>({
        globalState: GlobalReducer,
        userState: UserReducer
    });

    return createStore(
        rootReducer,
        initialState,
        compose(applyMiddleware(...middleware))
    );
}

import { StrictMode } from 'react';
import ReactDOM from 'react-dom';
import { Router } from 'react-router-dom';
import { App } from './Pages';
ReactDOM.render(
    <StrictMode>
        <Router location={''} navigator={undefined}>
            <App />
        </Router>
    </StrictMode>,
    document.getElementById('app')
)

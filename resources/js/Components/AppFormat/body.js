import React from 'react';
import { Main } from '../../Pages/MainPage/main'
import { About } from '../../Pages/About/about'
import {
    BrowserRouter as Router,
    Routes,
    Switch,
    Route,
    Link
} from "react-router-dom";

export const Body = () => {
    return (
        <Router>
            <Routes>
                <Route exact path="/" element={<Main/>} />
                <Route exact path="/about" element={<About/>} />
            </Routes>
        </Router>
    );
}
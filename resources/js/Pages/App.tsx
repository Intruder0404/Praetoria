import React, { FC } from 'react';
import ReactDOM from 'react-dom';
import { Layout } from '../Components/Layout/layout';
import { Route,Routes as Switch } from 'react-router-dom';
import { Main } from './MainPage/main';
import { About } from './About/about';
import Box from '@mui/material/Box';
import { makeStyles } from '@mui/styles';
const useStyle = makeStyles(theme =>({
    root:{
        padding:"0 30px",
        height:"100%",
        maxHeight:"100%",
        minHeight:"100%"
    }
}))

export const App : FC = props => {
    const classes = useStyle();
    return (
        <Box className={classes.root}>
            <Switch>
                <Route path="/" element={<Main />} />
                <Route path="/about" element={<About />} />
            </Switch>
        </Box>
    )
}

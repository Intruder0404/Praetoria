import * as React from 'react';
import { Route } from 'react-router-dom';
import UserSummary from './Pages/UserSummary';

export const routes =
    <>
        <Route exact path='/' component={UserSummary} />
    </>;
import React from 'react';
import { Header } from '../AppFormat/header';
import { Footer } from '../AppFormat/footer';
export const Layout = (props: { children: boolean | React.ReactChild | React.ReactFragment | React.ReactPortal; }) => {
    return (
        <div>
            <Header />
            {props.children}
            <Footer />
        </div>
    )
}
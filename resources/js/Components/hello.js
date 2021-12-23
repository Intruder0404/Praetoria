import React from 'react';
import ReactDOM from 'react-dom';

export default function Hello() {
    return (
        <h1>Hello React!</h1>
    );
}

if (document.getElementById('hello-react')) {
    ReactDOM.render(<Hello />, document.getElementById('hello-react'));
}
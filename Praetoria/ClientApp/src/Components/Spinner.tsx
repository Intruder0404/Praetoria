import * as React from 'react';
import {
    withStyles, WithStyles, Theme
} from '@material-ui/core';

const styles = (theme: Theme) => ({
    root: {
    },
    spinner: {
        position: 'absolute' as 'absolute',
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        zIndex: 9999,
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
        display: 'flex' as 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        
    },
    progress: {
        margin: 5,
        height: 60,
        width: 60
    }
});

interface SpinnerState {
}

interface SpinnerProps extends WithStyles<typeof styles> {
    loading?: boolean;
}

class Spinner extends React.PureComponent<SpinnerProps, SpinnerState> {

    constructor(props: SpinnerProps) {
        super(props);
        this.state = {
        };
    }

    public render() {
        const { classes, loading } = this.props;

        return loading ? (
            <div className={classes.spinner} >
                
            </div>
        ) : null;
    }
}

export default withStyles(styles)(Spinner);
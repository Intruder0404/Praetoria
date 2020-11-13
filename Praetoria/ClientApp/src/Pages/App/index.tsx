import * as React from 'react';

//Components
import { MuiTheme, makeStyles } from 'cae-storybook/dist/theme';
import { Spinner } from 'cae-storybook/dist/widget';

// Routes
import * as RoutesModule from 'routes';

//Redux
import { StoreState } from 'Redux/types';
import { connect } from 'react-redux';

const useStyles = makeStyles<MuiTheme>(theme => ({
    root: {
        overflowY: 'auto',
        padding: theme.spacing(2)
    }
}));

interface StateFromReducerProps {
    loading: boolean;
}

export interface AppProps {}

type ContainerProps = AppProps & StateFromReducerProps;

const AppFC: React.FC<ContainerProps> = props => {
    const { loading } = props;
    const classes = useStyles();

    React.useEffect(() => {
        const body = document.getElementsByTagName('body');
        if (body && body.length > 0) {
            body[0].className = body[0].className + " react-initialized";
        }
    }, [])

    return (
        <div className={classes.root}>
            {RoutesModule.routes}
            <Spinner loading={loading} />
        </div>
    );
}

const mapStateToProps = (state: StoreState) => ({
    loading: state.globalState.loading
});

export const App = connect(mapStateToProps)(AppFC);
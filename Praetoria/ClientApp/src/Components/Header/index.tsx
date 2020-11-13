import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Toolbar, AppBar
} from '@material-ui/core';

//Components
import MoreOptionMenu from './MoreOptionMenu';
//Services
import { GlobalEnvironment } from '../../Helpers';

//Images and Icons
import CaeIcon from '../../Assets/Logos/CAE.svg';

//Redux
import { StoreState } from '../../Redux/types';
import { connect } from 'react-redux';

const styles = (theme: Theme) => ({
    root: {
    },
    mainContainer: {
        height:'60px'
    },
    grow: {
        display: 'flex' as 'flex',
        flexGrow: 1,
        justifyContent: 'flex-end',
    },
    menuButton: {
        marginRight: 20,
    },
    envTypeBox: {
        margin: '0px 10px 0px 10px',
        '& span': {
            backgroundColor: theme.palette.text.secondary,
            borderRadius: 5,
            padding: '4px 10px 4px 10px'
        }
    },
    caeLogo: {
        height: "35px",
        width: "auto",
        marginRight: 40
    },
    toolbarButtons: {
        marginLeft: 'auto'
    }
});

interface StateFromReducerProps {
}

interface DispatchFromActionProps {
}


interface HeaderState {
}

interface HeaderProps extends WithStyles<typeof styles> {
}

class Header extends React.PureComponent<HeaderProps, HeaderState> {

    constructor(props: HeaderProps) {
        super(props);
        this.state = {
        };
    }

    private getEnvTypeStr = (envType: number): string => {

        let envTypeStr: string = "";
        switch (envType) {
            case 1:
                envTypeStr = "LOCAL";
                break;
            case 2:
                envTypeStr = "DEV";
                break;
            case 3:
                envTypeStr = "PRE-PROD";
                break;
            case 4:
                envTypeStr = "PROD";
                break;
            default:
                envTypeStr = "N/A";
                break;
        }

        return envTypeStr;
    }

    public render() {
        const { classes } = this.props;
        const envType: number = GlobalEnvironment.GetEnvironmentType();
        const envTypeEle: JSX.Element | null = envType === 4 ?
            null :
            (
                <span>
                    {this.getEnvTypeStr(envType)}
                </span>
            );

        return (
            <AppBar className={classes.mainContainer}>
                <Toolbar>
                    <img src={CaeIcon} className={classes.caeLogo} alt="CAE logo" />
                    <h3>
                        Outil de gestion des offres de temps supplémentaire
                    </h3>
                    <div className={classes.envTypeBox}>
                        {envTypeEle}
                    </div>
                    <div className={classes.toolbarButtons}>
                        <MoreOptionMenu />
                    </div>
                </Toolbar>
            </AppBar>
        );
    }
}

const mapStateToProps = (state: StoreState) => ({
});

const mapDispatchToProps = (dispatch: any): DispatchFromActionProps => ({
});

export default connect(mapStateToProps, mapDispatchToProps)(withStyles(styles)(Header));
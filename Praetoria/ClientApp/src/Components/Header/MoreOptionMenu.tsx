import * as React from 'react';
import { ClickAwayListener, Grow, Paper, Popper, MenuItem, MenuList, Theme, withStyles, WithStyles, IconButton } from '@material-ui/core';

//Icons
import MoreVert from '@material-ui/icons/MoreVert';

const styles = (theme: Theme) => ({
    root: {
        display: 'flex',
    },
    paper: {
        zIndex: 20
    },
    popper: {
    },
    icon: {
        marginRight: theme.spacing(0.5),
        width: 20,
        height: 20,
    },
});

interface MoreOptionMenuState {
    open: boolean;
}

interface MoreOptionMenuProps extends WithStyles<typeof styles> {
}

let anchorEl: any;

class MoreOptionMenu extends React.Component<MoreOptionMenuProps, MoreOptionMenuState> {

    constructor(props: MoreOptionMenuProps) {
        super(props);

        this.state = {
            open: false
        }
    }

    handleToggle = () => {
        this.setState(state => ({ open: !state.open }));
    };

    handleClose = (event: any) => {
        if (anchorEl.contains(event.target)) {
            return;
        }

        this.setState({ open: false });
    };

    public render() {
        const { classes } = this.props;
        const { open } = this.state;

        return (
            <div className={classes.root}>
                <IconButton
                    color="inherit"
                    buttonRef={node => {
                        anchorEl = node;
                    }}
                    aria-owns={open ? 'menu-list-grow' : undefined}
                    aria-haspopup="true"
                    onClick={this.handleToggle}
                >
                    <MoreVert className={classes.icon}  />
                </IconButton>
                <Popper open={open} anchorEl={anchorEl} transition disablePortal placement='bottom-end' className={classes.popper}>
                    {({ TransitionProps, placement }) => (
                        <Grow {...TransitionProps}>
                            <Paper>
                                <ClickAwayListener onClickAway={this.handleClose}>
                                    <MenuList>
                                        <MenuItem disabled> Contactez nous</MenuItem>
                                        <MenuItem disabled> À propos</MenuItem>
                                    </MenuList>
                                </ClickAwayListener>
                            </Paper>
                        </Grow>
                    )}
                </Popper>
            </div>
        );
    }
}

export default withStyles(styles)(MoreOptionMenu);

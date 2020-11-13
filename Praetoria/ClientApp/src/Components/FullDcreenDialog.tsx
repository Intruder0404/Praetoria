import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Dialog, AppBar, Toolbar, IconButton, Typography,Button, Slide
} from '@material-ui/core';
import { TransitionProps } from '@material-ui/core/transitions';
import CloseIcon from '@material-ui/icons/Close';

const styles = (theme: Theme) => ({
    root: {
    },
    appBar: {
        position: 'relative' as 'relative'
    },
    title: {
        marginLeft: theme.spacing(2),
        flex: 1
    }
});

const Transition = React.forwardRef<unknown, TransitionProps>(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

interface FullDcreenDialogState {
}

interface FullDcreenDialogProps extends WithStyles<typeof styles> {
    isOpen: boolean;
    title: string;
    onClose: Function;
    actionButtonTitle?: string;
    onClickActionButton?: Function;
}

class FullDcreenDialog extends React.PureComponent<FullDcreenDialogProps, FullDcreenDialogState> {

    constructor(props: FullDcreenDialogProps) {
        super(props);
        this.state = {
        };
    }

    public render() {
        const { classes, isOpen, children, title, onClose, actionButtonTitle, onClickActionButton } = this.props;

        return (
            <Dialog fullScreen open={isOpen} onClose={() => onClose()} TransitionComponent={Transition}>
                <AppBar className={classes.appBar}>
                    <Toolbar>
                        <IconButton edge="start" color="inherit" onClick={() => onClose()} aria-label="close">
                            <CloseIcon />
                        </IconButton>
                        <Typography variant="h6" className={classes.title}>
                            {title}
                        </Typography>
                        {
                            actionButtonTitle && onClickActionButton ? (
                                <Button color="inherit" onClick={() => onClickActionButton()}>
                                    {actionButtonTitle}
                                </Button>
                            ) : null
                        }
                    </Toolbar>
                </AppBar>
                {children}
            </Dialog>
        );
    }
}

export default withStyles(styles)(FullDcreenDialog);
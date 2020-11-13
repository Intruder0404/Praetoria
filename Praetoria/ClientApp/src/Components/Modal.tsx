import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Button, Dialog, DialogTitle, DialogContent, DialogContentText, 
    DialogActions, Slide
} from '@material-ui/core';
import { TransitionProps } from '@material-ui/core/transitions';

const styles = (theme: Theme) => ({
    root: {
    }
});

interface ModalState {
}

interface ModalProps extends WithStyles<typeof styles> {
    open: boolean;
    title: string;
    handleOnClickClose: Function;
    handleOnClickButtonLeft: Function;
    handleOnClickButtonRight: Function;
    buttonLeftText: string;
    buttonRightText: string;
}

const Transition = React.forwardRef<unknown, TransitionProps>(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});

class Modal extends React.PureComponent<ModalProps, ModalState> {

    constructor(props: ModalProps) {
        super(props);
        this.state = {
        };
    }

    public render() {
        const { classes, open, handleOnClickClose, handleOnClickButtonLeft,
            handleOnClickButtonRight, buttonLeftText, buttonRightText, title, children
        } = this.props;

        return (
            <Dialog
                open={open}
                TransitionComponent={Transition}
                keepMounted
                onClose={() => handleOnClickClose}
                aria-labelledby="alert-dialog-slide-title"
                aria-describedby="alert-dialog-slide-description"
            >
                <DialogTitle id="alert-dialog-slide-title">{title}</DialogTitle>
                <DialogContent>
                    {children}
                </DialogContent>
                <DialogActions>
                    <Button onClick={() => handleOnClickButtonLeft()} color="primary">
                        {buttonLeftText}
                    </Button>
                    <Button onClick={() => handleOnClickButtonRight()} color="primary">
                        {buttonRightText}
                    </Button>
                </DialogActions>
            </Dialog>
        );
    }
}

export default withStyles(styles)(Modal);
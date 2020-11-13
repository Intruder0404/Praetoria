import * as React from 'react';
import {
    withStyles, WithStyles, Theme, IconButton
} from '@material-ui/core';

const styles = (theme: Theme) => ({
    root: {
    }
});

interface LoadCalenderDetailsState {
}

interface LoadCalenderDetailsProps extends WithStyles<typeof styles> {
    onClickCalendar: Function;
    id: number;
}

class LoadCalenderDetails extends React.PureComponent<LoadCalenderDetailsProps, LoadCalenderDetailsState> {

    constructor(props: LoadCalenderDetailsProps) {
        super(props);
        this.state = {
        };
    }

    private handleOnClick_loadCalender = (): void => {
        const { onClickCalendar, id } = this.props;

        onClickCalendar(id.toString());
    }

    public render() {
        return (
            <IconButton
                onClick={this.handleOnClick_loadCalender}
            >
                <i className="material-icons">
                    calendar_today
                </i>
            </IconButton>
        );
    }
}
export default withStyles(styles)(LoadCalenderDetails);
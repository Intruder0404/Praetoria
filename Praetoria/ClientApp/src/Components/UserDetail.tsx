import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Paper, Typography 
} from '@material-ui/core';

//Models
import { User } from '../Models';
import { HistoryService } from '../Services/HistoryService';

const styles = (theme: Theme) => ({
    root: {
        padding: theme.spacing(3, 2),
    }
});

interface UserDetailState {
    message: string;
}

interface UserDetailProps extends WithStyles<typeof styles> {
    users: User[];
}

class UserDetail extends React.PureComponent<UserDetailProps, UserDetailState> {

    constructor(props: UserDetailProps) {
        super(props);
        this.state = {
            message: "",
        };
    }

    public render() {
        const { users } = this.props;
        const { message } = this.state;

        if (users.length === 1) {
            let UserList: string = "";
            for (let i = 0; i < users[0].calendar.length; i++) {
                UserList += users[0].calendar[i].id + ",";
            }
            UserList = UserList.substring(0, UserList.length - 1);
            if (UserList === "")
                this.setState({ message: "Ce calendrier n'a jamais été modifié" });
            else {
                HistoryService.GetHistoryDetailsByModifedTableId(UserList).then(history => {
                    if (history[0] != null) {
                        this.setState({
                            message: "Ce calendrier a été modifié par " + history[0].modifiedBy + " le " + history[0].modifiedDate.toString().replace("T", " ").substring(0, 19)
                        })
                    }
                });
            }
        } 

        return (
            <div style={{ paddingBottom: '1vh' }}>
                <Paper style={{ textAlign: 'center', opacity: 0.8, margin: 'auto'}}>
                    <Typography variant="h5" component="h3">
                        {users.length > 1 ? "Selection multiple" : users[0].name}
                    </Typography>
                    <Typography component="p">
                        {users.length > 1 ? users.map(function (user) { return user.name }).join(", ") :users[0].department}
                    </Typography>
                    <Typography component="p">
                        {users.length > 1 ? "" :users[0].classification}
                    </Typography>
                    <Typography component="p" style={{ textAlign: 'left' }}>
                        {message}
                    </Typography>
                </Paper>
            </div>
            );
    }
}

export default withStyles(styles)(UserDetail);
import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Dialog, Button, Paper, Typography, DialogActions, DialogContent, DialogContentText, DialogTitle, TextField, IconButton
} from '@material-ui/core';

//Components
import { Calendar, momentLocalizer } from 'react-big-calendar';
import 'react-big-calendar/lib/css/react-big-calendar.css';
import moment from 'moment'
import 'moment/locale/fr'
import Select from '../Components/Select';

//Icons
import DeleteIcon from '@material-ui/icons/Delete';

//Models
import { Calendar as CalendarModel, Status as StatusModel, User as UserModel, Status, User } from '../Models';

//Services
import { StatusService, CalendarService, UserService } from '../Services';


const styles = (theme: Theme) => ({
    root: {
    },
    inputHours: {
        display: 'flex' as 'flex',
        width: '200px',
        paddingBottom: '8px'
    },
    inputStatus: {
        display: 'flex' as 'flex',
    },
    dialoglogPaper: {
        padding: 10,
        display: 'flex' as 'flex',
        flexDirection: 'column' as 'column',
        justifyContent: 'center',
        alignItems: 'center'
    }
});

interface CalendarEvent {
    id: string;
    title: string;
    start: Date;
    end: Date;
}

interface DataList {
    key: string | number;
    value: string;
    backgroundColor?: string;
    color?: string;
}

interface BigCalendarState {
    events: CalendarEvent[];
    isStatusDialogOpen: boolean;
    selectedStartDate: Date;
    selectedStartDateTitle: string;
    status: StatusModel[];
    selectedStatus: DataList;
    selectedHours: string;
    statusError: boolean;
    hoursError: boolean;
    statusList: DataList[];
    eventDialogTitle: string;
    isNewEvent: boolean;
    currentIdEvents: string;
}

interface BigCalendarProps extends WithStyles<typeof styles> {
    users: UserModel[];
    handleModifiedUserUpdate: Function;
}

var previousHours = 0;

class BigCalendar extends React.PureComponent<BigCalendarProps, BigCalendarState> {


    constructor(props: BigCalendarProps) {
        super(props);
        this.state = {
            events: BigCalendar.generateEvents(props.users[0].calendar),
            isStatusDialogOpen: false,
            selectedStartDate: new Date(1900, 1, 1),
            selectedStartDateTitle: '',
            status: [new StatusModel(-1, '', false)],
            selectedStatus: { key: -1, value: '' },
            selectedHours: '0',
            statusList: [],
            statusError: false,
            hoursError: false,
            eventDialogTitle: "",
            isNewEvent: true,
            currentIdEvents: "",
        };

        StatusService.fetchStatus().then(status => {
            const statusList: DataList[] = [];
            const statusLength: number = status.length;

            for (let i = 0; i < statusLength; ++i) {
                const s: Status = status[i];
               
                if (s.isDisplayed)
                    statusList.push({ key: s.id, value: s.name });
            }

            this.setState({ status, statusList });
        })
    }

    static getDerivedStateFromProps(nextProps: BigCalendarProps, prevState: BigCalendarState) {
        const newState: BigCalendarState = { ...prevState };

        if (newState.events.length < 1 && nextProps.users.length === 1 && nextProps.users[0].calendar.length > 0)
            newState.events = BigCalendar.generateEvents(nextProps.users[0].calendar);

        return newState;
    }

    private static generateEvents = (calendars: CalendarModel[]): CalendarEvent[] => {

        const events: CalendarEvent[] = [];
        for (let i = 0; i < calendars.length; ++i) {
            const calendar = calendars[i];

            const event: CalendarEvent = {
                id: calendar.id.toString(),
                title: calendar.status.name + ' - ' + calendar.hours + 'h',
                start: calendar.creationDate,
                end: calendar.creationDate
            }

            events.push(event);
        }

        return events
    }

    private eventStyleGetter: any = (event: CalendarEvent, start: Date, end: Date, isSelected: boolean): any => {
        let backgroundColor: string;

        if (event.title.includes('Accepté') || event.title.includes('Offerte')) {
            backgroundColor = '#5FBA7D';
            event.title = event.title.replace('Accepté', 'Offerte');
        } else if (event.title.includes('Refusé')) {
            backgroundColor = '#999999';
            event.title = event.title.replace('Refusé', 'Offerte');
        } else if (event.title.includes('Maladies')) {
            backgroundColor = '#999999';
            event.title = "Maladies";
        } else if (event.title.includes('Vacances')) {
            backgroundColor = '#999999';
            event.title = "Vacances";
        } else if (event.title.includes('client')) {
            backgroundColor = '#999999';
            event.title = "Site du client";
        } else if (event.title.includes('Solde de maladie')) {
            backgroundColor = '#999999';
        } else {
            backgroundColor = '#E8651A'
        }

        var style = {
            backgroundColor: backgroundColor,
            textAlign: 'center',
            fontWeight: 'bold',
            fontSize: 'larger',
            opacity: 0.8,
            //height: '12vh', (full of parent)
            height: '3vh',
            display: 'block'
        };
        return {
            style: style
        };
    }

    private createEvent: any = (start: Date) => {

        this.setState({
            selectedStartDate: start,
            selectedStartDateTitle: start.toLocaleDateString('fr-CA', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }),
            eventDialogTitle: "Ajout d'offre de temps supplémentaire",
            selectedHours: "0",
            selectedStatus: { key: -1, value: "" },
            isNewEvent: true,
        });
        this.handleToggleOpenModal();
    }


    private editEvent: any = (idEvents: string) => {
        const id: number = parseInt(idEvents.split(",")[0]);

        CalendarService.fetchCalendarById(id).then(calendar => {
            const status = this.state.statusList.find(function (element) { return element.key === calendar.statusId })
            this.setState({
                selectedStartDate: new Date(calendar.creationDate),
                selectedStartDateTitle: new Date(calendar.creationDate).toLocaleDateString('fr-CA', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }),
                eventDialogTitle: "Modification d'offre de temps supplémentaire",
                selectedHours: calendar.hours.toString(),
                selectedStatus: status === undefined ? { key: "-1", value: "" } : status,
                isNewEvent: false,
                currentIdEvents: idEvents
            });

            previousHours = calendar.hours;
            this.handleToggleOpenModal();
        });
    }

    private handleToggleOpenModal = (): void => {
        this.setState({ isStatusDialogOpen: !this.state.isStatusDialogOpen });
    }

    private handleSave = (): void => {

        const { selectedStatus, selectedHours, isNewEvent, selectedStartDate } = this.state;
        const { users } = this.props;
        const hours = parseFloat(selectedHours);
        let insertIt: boolean = true;
        let num: number = 0;
        let date: string = selectedStartDate.getFullYear() + "-" + (selectedStartDate.getMonth() + 1) + "-" + selectedStartDate.getDate();

        UserService.fetchUsers().then(usersList => {
            for (let count = 0; count < usersList.length; count++) {
                if (users[0].name === usersList[count].name) {
                    num = count;
                    break;
                }
            }
            CalendarService.getHoursPerDay(usersList[num].flexEmployeesId, date).then(dailyHour => {
                const isSpecialDate = date === '2019-12-25' || date === '2020-1-1';
                
                if(!isSpecialDate ) {
                if (isNewEvent) {
                    if (selectedStatus.value !== "Vacances" && (dailyHour + hours) > 16) {
                        insertIt = false;
                        alert("Un employé ne peut pas faire plus de 16 heures de overtime quotidiennement\nAn employee cannot have more than 16 overtime daily hours\n" + usersList[num].name + " (" + usersList[num].employeeNumber + ")");
                        }
                    } else {
                    if (selectedStatus.value !== "Vacances" && (dailyHour + hours - previousHours) > 16) {
                        insertIt = false;
                        alert("Un employé ne peut pas faire plus de 16 heures de overtime quotidiennement\nAn employee cannot have more than 16 overtime daily hours\n" + usersList[num].name + " (" + usersList[num].employeeNumber + ")");
                        }
                    }
                }
            
            const isValueExcluded = this.isException(selectedStatus.value);
            let statusError = false;
            let hoursError = false;
            
            if (insertIt) {
                if (selectedStatus.key >= 0) {
                    statusError = false;
                } else {
                    statusError = true;
                }
                 
                if (!isNaN(hours) && hours > 0) {
                    hoursError = false;
                } else {
                    if(isValueExcluded) {
                        hoursError = false;
                    }
                    else {
                        hoursError = true;
                    }
                }

                this.setState({
                    statusError: statusError,
                    hoursError: hoursError
                });

                if(selectedStatus.value === "Maladies") {

                    const { isAbsentFiveOrMoreConsecutiveDays, absenceStartDate, absenceEndDate } = this.getAbsenceData();
                    if (isAbsentFiveOrMoreConsecutiveDays) {
                        this.displayReturnBalance(absenceStartDate, absenceEndDate);                    
                    }
                }

                if ((selectedStatus.key > 0 && hours > 0) || 
                    ((selectedStatus.key > 0 && hours >= 0) && (isValueExcluded))) {
                    isNewEvent ? this.saveNewEvent() : this.saveEditEvent();
                    this.handleToggleOpenModal();
                }
            }

            });
        });
    }

    /**
     * Checks if status is an exception.
     * 
     * @param status - The status of an event
     * 
     * @returns True if status is an exception
     */
    private isException = (status: string) : boolean => {
        const excludedValues = ["Vacances", "Maladies", "Site du client"];
        return excludedValues.includes(status);
    }

    /**
     * Gets information on an absence.
     * 
     * @returns Checks if user is absent for 5 or more consecutive days and 
     *          start and end period of absence
     */
    private getAbsenceData = () : { isAbsentFiveOrMoreConsecutiveDays: boolean, absenceStartDate: Date, absenceEndDate: Date}  => {
        let numberOfAbsentDaysInARow = 1;
        const MOVE_BACKWARD = -1;
        const MOVE_FORWARD = 1;
        
        // Retrieves the information from the past of the selected date
        let data = this.getNumberOfAbsentDaysInARow(MOVE_BACKWARD);
        numberOfAbsentDaysInARow += data.numberOfAbsentDays;
        const absenceStartDate: Date = new Date(data.absentDate);

        // Retrieves the information from the future of the selected date
        data = this.getNumberOfAbsentDaysInARow(MOVE_FORWARD);
        numberOfAbsentDaysInARow += data.numberOfAbsentDays;
        const absenceEndDate: Date = new Date(data.absentDate);

        const isAbsentFiveOrMoreConsecutiveDays: boolean = numberOfAbsentDaysInARow >= 5;

        return { isAbsentFiveOrMoreConsecutiveDays, absenceStartDate, absenceEndDate };
    }

    /**
     * Gets the number of days absent in the past or the future depending
     * on the selected date and also gets the furthest date in the past
     * or future (wherever it stops).
     * 
     * @param displacement - Number of spaces to move forward or backward
     * 
     * @returns The number of days in the past or future and the absent date (start or end)
     */
    private getNumberOfAbsentDaysInARow = (displacement: number) : { numberOfAbsentDays: number, absentDate: Date } => {
        const { selectedStartDate, events } = this.state;
        let numberOfAbsentDays = 0;
        const SATURDAY = 6;
        const SUNDAY = 0;

        let currentDate = new Date(selectedStartDate);
        let nextFound = true;
        let nextDate = new Date();
        
        while (nextFound) {
            nextDate = new Date(currentDate);
            // Move date back or forward
            nextDate.setDate(currentDate.getDate() + displacement);
            const newNextDate =  new Date(nextDate);
            currentDate = newNextDate;
            
            // Skip if weekend
            if (newNextDate.getDay().valueOf() !== SATURDAY || newNextDate.getDay().valueOf() !== SUNDAY) {
                
                // Returns an event if a absent event was found
                const absentDayEvent = events.filter(event => this.filterEvents(event, newNextDate));
                
                if (absentDayEvent.length > 0) {
                    numberOfAbsentDays++;
                } else {
                    nextFound = false;
                }
            }

        }

        const absentDate = new Date(nextDate);
        absentDate.setDate(nextDate.getDate() - displacement);

        return { numberOfAbsentDays, absentDate };
    }

    private filterEvents = (event: CalendarEvent, nextDate: Date): boolean => {
        return this.compareDates(event.start, nextDate) && event.title.includes("Maladies");
    }

    /**
     * Compares two dates.
     * 
     * @param d1 - First date
     * @param d1 - Second date
     * 
     * @returns True if both dates are equal
     */
    private compareDates = (d1: Date, d2: Date) : boolean => {
        const date = new Date(d1);
        return this.convertDateToString(date) === this.convertDateToString(d2);
    }

    /**
     * Displays the return balance (overtime hours) as an event.
     * 
     * @param startDate - Start period of absent days
     * @param endDate - End period of absent days
     * 
     */
    private displayReturnBalance = (startDate: Date, endDate: Date) : void => {
        const { users } = this.props;       
        const nextDate = new Date(endDate);
        nextDate.setDate(endDate.getDate() + 1);

        UserService.getReturnBalanceByClassification(users[0].classification, this.convertDateToString(startDate), this.convertDateToString(endDate), users[0].employeeNumber)
        .then(returnBalance => {
            this.addSpecificEvent("Solde de maladie", 8, returnBalance, nextDate); 
        });
    }

    /**
     * Converts a date to a string in a specific format.
     * 
     * @param date - Date to convert
     * 
     * @returns The string format of the date
     */
    private convertDateToString = (date: Date) : string  => {
        const options = { year: 'numeric', month: 'numeric', day: 'numeric' };
        return date.toLocaleString('fr-CA', options);
    }

    /**
     * Adds a specific event to the calendar.
     * 
     * @param status - The status for the event
     * @param statusKey - The status key (id from OVT.Status)
     * @param numberOfHours - The number of hours for the event
     * @param date - The specific date of the event
     * 
     */
    private addSpecificEvent = (status: string, statusKey: Number, numberOfHours: number, date: Date) : void => {
        const { users, handleModifiedUserUpdate } = this.props
        const { events } = this.state;
        const newUsers: User[] = users.slice();
        const newEvents: CalendarEvent[] = events.slice();

        let calendars: CalendarModel[] = [];

        users.forEach(function (user) {
            calendars.push(new CalendarModel(0, Number(statusKey), date, numberOfHours, user.flexEmployeesId, new StatusModel(0, '')));
        });

        CalendarService.addCalendars(calendars).then(calendars => {

            const event: CalendarEvent = {
                id: calendars.map(function (calendar) { return calendar.id.toString() }).join(","),
                title: status + ' - ' + numberOfHours.toFixed(2) + 'h',
                start: date,
                end: date,
            }

            newEvents.push(event);
            this.setState({ events: newEvents });
            newUsers[0].calendar.push(calendars[0]);
            handleModifiedUserUpdate(newUsers);
        });
    }

    private handleDelete = (): void => {

        if (window.confirm('Êtes-vous sûr de vouloir supprimer cette offre de temps supplémentaire ?')) {
            this.saveDeleteEvent();
            this.handleToggleOpenModal();
        }
    }

    private saveNewEvent = (): void => {
        const { users } = this.props
        const { events, selectedStartDate, selectedStatus, selectedHours } = this.state;
        var newUsers: User[] = users.slice();
        const hours = parseFloat(selectedHours);
        const newEvents: CalendarEvent[] = events.slice();

        let calendars: CalendarModel[] = [];

        users.forEach(function (user) {
            calendars.push(new CalendarModel(0, Number(selectedStatus.key), selectedStartDate, hours, user.flexEmployeesId, new StatusModel(0, '')));
        });

        CalendarService.addCalendars(calendars).then(calendars => {

            const event: CalendarEvent = {
                id: calendars.map(function (calendar) { return calendar.id.toString() }).join(","),
                title: selectedStatus.value + ' - ' + hours + 'h ',
                start: selectedStartDate,
                end: selectedStartDate,
            }

            newEvents.push(event);
            this.setState({ events: newEvents });
            newUsers[0].calendar.push(calendars[0]);
            this.props.handleModifiedUserUpdate(newUsers);
        });
        
    }

    private saveEditEvent = (): void => {
        const { events, selectedStatus, selectedHours, currentIdEvents } = this.state;
        const { users } = this.props;
        let calendars: CalendarModel[] = [];
        var newUsers: User[] = users.slice();

        currentIdEvents.split(",").forEach(function (id) {
            calendars.push(new CalendarModel(
                parseInt(id),
                typeof selectedStatus.key == "string" ? parseInt(selectedStatus.key) : selectedStatus.key,
                new Date(),
                parseFloat(selectedHours),
                -1,
                new StatusModel(
                    typeof selectedStatus.key == "string" ? parseInt(selectedStatus.key) : selectedStatus.key,
                    selectedStatus.value)
            )
            );
        });

        CalendarService.updateCalendars(calendars).then(calendars => {
            const newEvents: CalendarEvent[] = events.map(event => (event.id === currentIdEvents ? {
                id: event.id,
                title: selectedStatus.value + ' - ' + selectedHours + 'h ',
                start: event.start,
                end: event.end
            } : event));

            this.setState({ events: newEvents });
            newUsers[0].calendar[newUsers[0].calendar.findIndex(c => c.id === calendars[0].id)] = calendars[0];
            this.props.handleModifiedUserUpdate(newUsers);
        });
        
    }

    private saveDeleteEvent = (): void => {
        const { events, selectedStatus, selectedHours, currentIdEvents } = this.state;
        const { users } = this.props;
        let calendars: CalendarModel[] = [];
        var newUsers: User[] = users.slice();
        currentIdEvents.split(",").forEach(function (id) {
            calendars.push(new CalendarModel(
                parseInt(id),
                typeof selectedStatus.key == "string" ? parseInt(selectedStatus.key) : selectedStatus.key,
                new Date(),
                parseFloat(selectedHours),
                -1,
                new StatusModel(
                    typeof selectedStatus.key == "string" ? parseInt(selectedStatus.key) : selectedStatus.key,
                    selectedStatus.value)
            )
            );
        });

        let newEvents: CalendarEvent[] = events.slice();
        newEvents.splice(events.findIndex(e => e.id === calendars[0].id.toString()), 1);
        this.setState({ events: newEvents });
        this.handleToggleOpenModal();

        CalendarService.deleteCalendars(calendars);
        newUsers[0].calendar=newUsers[0].calendar.filter(c => c.id !== parseInt(currentIdEvents));
        this.props.handleModifiedUserUpdate(newUsers);
    }

    private handleChangedSelect = (value: number): void => {
        const statusList = this.state.statusList;
        const statusListIndex: number = statusList.findIndex(s => s.key === value);
        this.setState({ selectedStatus: statusList[statusListIndex] });
    }

    private handleChangedhoursInput = (event: React.ChangeEvent<HTMLInputElement>): void => {
        this.setState({ selectedHours: event.target.value });
    }

    public render() {
        const { classes } = this.props;
        const { statusList, selectedHours, statusError, hoursError, selectedStartDateTitle, eventDialogTitle, isNewEvent } = this.state;
        const { events, isStatusDialogOpen, selectedStatus } = this.state;
        const localizer = momentLocalizer(moment);
        return (
            <>
                <Calendar
                    localizer={localizer}
                    events={events}
                    views={['month']}
                    startAccessor="start"
                    endAccessor="end"
                    messages={{ next: "Suivant", previous: "Précedent", today: "Aujourd'hui", showMore: count => `+${count} autre(s)` }}
                    culture={"fr"}
                    selectable
                    onSelectEvent={event => this.editEvent(event.id)}
                    onSelectSlot={(event) => this.createEvent(event.start)}
                    eventPropGetter={(this.eventStyleGetter)}
                    popup={true}
                />
                <Dialog
                    open={isStatusDialogOpen}
                    onClose={this.handleToggleOpenModal}
                    aria-labelledby="alert-dialog-title"
                    aria-describedby="alert-dialog-description"
                >
                    <DialogTitle id="alert-dialog-title">{eventDialogTitle}</DialogTitle>
                    <DialogContent>
                        <DialogContentText id="alert-dialog-description">
                            <Paper className={classes.dialoglogPaper}>
                                <Typography variant="h6">
                                    {selectedStartDateTitle}
                                </Typography>
                                <TextField className={classes.inputHours}
                                    label="Volume d'heure offertes"
                                    id="hoursInput"
                                    value={selectedHours}
                                    type="number"
                                    onChange={this.handleChangedhoursInput}
                                    error={hoursError}
                                    margin="normal"
                                    variant="outlined"
                                />
                                <Select id={'Status'}
                                    className={classes.inputHours}
                                    inputLabel={"Status d'acceptation"}
                                    selectedValue={selectedStatus}
                                    dataList={statusList}
                                    error={statusError}
                                    onChange={this.handleChangedSelect}
                                />
                            </Paper>
                        </DialogContentText>
                    </DialogContent>
                    <DialogActions>
                        {
                            isNewEvent ? null : (
                                <IconButton aria-label="delete" >
                                    <DeleteIcon onClick={this.handleDelete} fontSize="large" />
                                </IconButton>
                            )
                        }
                        <Button onClick={this.handleToggleOpenModal} color="primary">
                            Annuler
                        </Button>
                        <Button onClick={this.handleSave} color="primary" autoFocus>
                            Soumettre
                        </Button>
                    </DialogActions>
                </Dialog>
            </>
        );
    }
}

export default withStyles(styles)(BigCalendar);
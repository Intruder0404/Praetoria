import * as React from 'react';
import { withStyles, WithStyles, Theme, TextField } from '@material-ui/core';
import MUIMaterialTable, { Localization } from 'material-table';

//Models
import { User } from '../Models';
import { ExcelService } from '../Services';

//Icons
import Search from '@material-ui/icons/Search'
import Clear from '@material-ui/icons/Clear'
import ViewColumn from '@material-ui/icons/ViewColumn'
import SaveAlt from '@material-ui/icons/SaveAlt'
import ChevronLeft from '@material-ui/icons/ChevronLeft'
import ChevronRight from '@material-ui/icons/ChevronRight'
import ArrowDownward from '@material-ui/icons/ArrowDownward'
import FirstPage from '@material-ui/icons/FirstPage'
import LastPage from '@material-ui/icons/LastPage'
import Add from '@material-ui/icons/Add'
import Check from '@material-ui/icons/Check'
import FilterList from '@material-ui/icons/FilterList'
import Remove from '@material-ui/icons/Remove'
import Delete from '@material-ui/icons/Delete'
import Edit from '@material-ui/icons/Edit'

const styles = (theme: Theme) => ({
    root: {
    },
    filterSearch: {
        width: '16.666666%',
        marginLeft: 'auto',
        marginRight: 'auto',
        fontWeight: 400,
        fontSize: 12,
    }
});

interface MaterialTableState {
    columns: any[];
    dataList: User[];
    filteredList: User[];
    filters: { searchNumber: string, searchName: string, searchDepartment: string, searchClassification: string, searchSupervisor: string, searchHours: string };
}

interface MaterialTableProps extends WithStyles<typeof styles> {
    title?: string;
    dataList: User[];
    columns: any[];
    localization?: Localization;
    onClickCalendar: Function;
}

class MaterialTable extends React.PureComponent<MaterialTableProps, MaterialTableState> {

    constructor(props: MaterialTableProps) {
        super(props);
        this.state = {
            columns: props.columns,
            dataList: props.dataList,
            filteredList: props.dataList,
            filters: { searchNumber: "", searchName: "", searchDepartment: "", searchClassification: "", searchSupervisor: "", searchHours: "" }
        };
    }

    componentWillReceiveProps(newProps: MaterialTableProps) {
        this.setState({ dataList: newProps.dataList, filteredList: newProps.dataList });
    }

    private handleOnChangeFilter = (field: string, value: string): void => {
        const { filters } = this.state;
        const newFilters = { ...filters };

        newFilters[field] = value;
        this.setState({ filters: newFilters });
    }

    private getFilteredList = (): User[] => {
        const { dataList, filters } = this.state;
        let filteredList = dataList.slice();
       
        if (filters.searchNumber) {
            if (filters.searchNumber.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchNumber.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.employeeNumber.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else 
                filteredList = filteredList.filter(fl => fl.employeeNumber.toString().toLowerCase().indexOf(filters.searchNumber.toLowerCase()) > -1);
        }

        if (filters.searchName) {
            if (filters.searchName.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchName.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.name.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else
                filteredList = filteredList.filter(fl => fl.name.toString().toLowerCase().indexOf(filters.searchName.toLowerCase()) > -1);
        }
            
        if (filters.searchDepartment) {
            if (filters.searchDepartment.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchDepartment.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.department.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else
                filteredList = filteredList.filter(fl => fl.department.toString().toLowerCase().indexOf(filters.searchDepartment.toLowerCase()) > -1);
        }

        if (filters.searchClassification) {
            if (filters.searchClassification.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchClassification.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.classification.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else
                filteredList = filteredList.filter(fl => fl.classification.toString().toLowerCase().indexOf(filters.searchClassification.toLowerCase()) > -1);
        }

        if (filters.searchSupervisor) {
            if (filters.searchSupervisor.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchSupervisor.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.supervisor.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else
                filteredList = filteredList.filter(fl => fl.supervisor.toString().toLowerCase().indexOf(filters.searchSupervisor.toLowerCase()) > -1);
        }

        if (filters.searchHours) {
            if (filters.searchHours.indexOf("+") > -1) {
                const searchFilters: string[] = filters.searchHours.split("+").filter(f => f ? true : false);
                filteredList = filteredList.filter(fl => searchFilters.findIndex(sf => fl.hours.toString().toLowerCase().indexOf(sf.toLowerCase()) > -1) > -1);
            } else
                filteredList = filteredList.filter(fl => fl.hours.toString().toLowerCase().indexOf(filters.searchHours.toLowerCase()) > -1);
        }

        return filteredList;
    }

    public render() {
        const { title, localization, onClickCalendar, classes } = this.props;
        const { columns, filters } = this.state;

        const filteredList: User[] = this.getFilteredList();

        return (
            <>
                <TextField
                    placeholder="Rechercher numéro de l'employé"
                    onChange={(e) => this.handleOnChangeFilter('searchNumber', e.target.value)}
                    value={filters.searchNumber}
                    className={classes.filterSearch}
                />
                <TextField
                    placeholder="Rechercher nom"
                    onChange={(e) => this.handleOnChangeFilter('searchName', e.target.value)}
                    value={filters.searchName}
                    className={classes.filterSearch}
                />
                <TextField
                    placeholder="Rechercher département"
                    onChange={(e) => this.handleOnChangeFilter('searchDepartment', e.target.value)}
                    value={filters.searchDepartment}
                    className={classes.filterSearch}
                />
                <TextField
                    placeholder="Rechercher classification"
                    onChange={(e) => this.handleOnChangeFilter('searchClassification', e.target.value)}
                    value={filters.searchClassification}
                    className={classes.filterSearch}
                />
                <TextField
                    placeholder="Rechercher superviseur"
                    onChange={(e) => this.handleOnChangeFilter('searchSupervisor', e.target.value)}
                    value={filters.searchSupervisor}
                    className={classes.filterSearch}
                />
                <TextField
                    placeholder="Rechercher le nombre d'heures"
                    onChange={(e) => this.handleOnChangeFilter('searchHours', e.target.value)}
                    value={filters.searchHours}
                    className={classes.filterSearch}
                />
                <MUIMaterialTable
                    title={title ? title : ""}
                    columns={columns}
                    data={filteredList}
                    localization={localization}
                    icons={{
                        Add: React.forwardRef((props, ref) => <Add {...props} ref={ref} />),
                        Check: React.forwardRef((props, ref) => <Check {...props} ref={ref} />),
                        Export: React.forwardRef((props, ref) => <SaveAlt {...props} ref={ref} />),
                        Filter: React.forwardRef((props, ref) => <FilterList {...props} ref={ref} />),
                        FirstPage: React.forwardRef((props, ref) => <FirstPage {...props} ref={ref} />),
                        LastPage: React.forwardRef((props, ref) => <LastPage {...props} ref={ref} />),
                        NextPage: React.forwardRef((props, ref) => <ChevronRight {...props} ref={ref} />),
                        PreviousPage: React.forwardRef((props, ref) => <ChevronLeft {...props} ref={ref} />),
                        Search: React.forwardRef((props, ref) => <Search {...props} ref={ref} />),
                        ThirdStateCheck: React.forwardRef((props, ref) => <Remove {...props} ref={ref} />),
                        ViewColumn: React.forwardRef((props, ref) => <ViewColumn {...props} ref={ref} />),
                        DetailPanel: React.forwardRef((props, ref) => <ChevronRight {...props} ref={ref} />),
                        Clear: React.forwardRef((props, ref) => <Clear {...props} ref={ref} />),
                        Delete: React.forwardRef((props, ref) => <Delete {...props} ref={ref} />),
                        ResetSearch: React.forwardRef((props, ref) => <Clear {...props} ref={ref} />),
                        Edit: React.forwardRef((props, ref) => <Edit {...props} ref={ref} />),
                        SortArrow: React.forwardRef((props, ref) => <ArrowDownward {...props} ref={ref} />),
                    }}
                    options={{
                        pageSize: 50,
                        pageSizeOptions: [8, 10, 25, 50, 100, 500],
                        selection: true,
                        sorting: true,
                        exportButton: true,
                        exportAllData: true,
                        search: false,
                        toolbar: true,

                        exportCsv: (columns, data) => {
                            data.forEach(d => d.calendarCell = null);
                            ExcelService.GetExcel(data);
                        }
                    }}
                    actions={[
                        {
                            tooltip: 'Ajouter des heures à tous les employés sélectionnés',
                            icon: 'calendar_today',
                            onClick: (evt, data: any[]) => onClickCalendar(data.map(function (user: User) { return user.employeeNumber }).join(","))
                        }
                    ]}
                />
            </>
        );
    }
}
export default withStyles(styles)(MaterialTable);
import * as React from 'react';
import {
    withStyles, WithStyles, Theme, Select as MUISelect, FormControl, InputLabel, MenuItem, OutlinedInput
} from '@material-ui/core';

const styles = (theme: Theme) => ({
    root: {
    },
    selectBox: {
        minWidth: 200,
        '& select': {
            paddingBottom: 2,
            width: 'calc(100% - 45px)'
        }
    },
    menuItem: {
        minHeight: 18,
        lineHeight: 'unset',
        paddingTop: 4,
        paddingBottom: 4
    }
});

interface SelectState {
}

interface SelectProps extends WithStyles<typeof styles> {
    id: string;
    inputLabel: string;
    selectedValue: DataList;
    dataList: DataList[];
    onChange: Function;
    className?: string;
    native?: boolean;
    required?: boolean;
    error?: boolean;
    disabled?: boolean;
    hasDefault?: boolean;
}

interface DataList {
    key: string | number;
    value: string;
    backgroundColor?: string;
    color?: string;
}

class Select extends React.PureComponent<SelectProps, SelectState> {

    constructor(props: SelectProps) {
        super(props);
        this.state = {
        };
    }

    public render() {
        const { classes, id, error, required, inputLabel, disabled, selectedValue, dataList, onChange, native, className, hasDefault } = this.props;

        const selectOptions: JSX.Element[] = [];

        if (native) {
            if (hasDefault)
                selectOptions.push(<option key={id + "_0"} value={-1} className={classes.menuItem} />);

            for (let i = 0; i < dataList.length; i++) {
                selectOptions.push(
                    <option style={{ backgroundColor: dataList[i].backgroundColor ? dataList[i].backgroundColor : "", color: dataList[i].color ? dataList[i].color : "" }} key={id + "_" + dataList[i].key} value={dataList[i].key} className={classes.menuItem}>
                        {dataList[i].value}
                    </option>
                );
            }
        }
        else {
            if (hasDefault)
                selectOptions.push(<MenuItem key={id + "_0"} value={-1} className={classes.menuItem} />);

            for (let i = 0; i < dataList.length; i++) {
                selectOptions.push(
                    <MenuItem key={id + "_" + dataList[i].key} value={dataList[i].key} className={classes.menuItem}>
                        {dataList[i].value}
                    </MenuItem>
                );
            }
        }

        return (
            <FormControl
                required={required}
                error={error}
                style={{ backgroundColor: 'white', borderRadius: 5 }}
            >
                <InputLabel style={{ paddingLeft: 4, paddingTop: 2, zIndex: 1 }} htmlFor={id + "-input"}>{inputLabel}</InputLabel>
                <MUISelect
                    native={native}
                    className={`${className} ${classes.selectBox}`}
                    disabled={disabled || dataList.length < 1}
                    value={selectedValue.key}
                    id={id}
                    onChange={(e) => onChange(Number(e.target.value))}
                    input={
                        <OutlinedInput
                            name={id}
                            id={id + "-input"}
                            labelWidth={0}
                            style={{
                                backgroundColor: selectedValue.backgroundColor ? selectedValue.backgroundColor : "",
                                color: selectedValue.color ? selectedValue.color : "",
                                borderRadius: 5
                            }}
                        />
                    }
                    renderValue={selected => selectedValue.value}
                >
                    {selectOptions}
                </MUISelect>
            </FormControl>
        );
    }
}

export default withStyles(styles)(Select);
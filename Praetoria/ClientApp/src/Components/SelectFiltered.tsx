import React, { CSSProperties, HTMLAttributes } from 'react';
import clsx from 'clsx';
import Select from 'react-select';
import { withStyles, WithStyles, Theme, } from '@material-ui/core/styles';
import Typography from '@material-ui/core/Typography';
import TextField, { BaseTextFieldProps } from '@material-ui/core/TextField';
import Paper from '@material-ui/core/Paper';
import Chip from '@material-ui/core/Chip';
import MenuItem from '@material-ui/core/MenuItem';
import CancelIcon from '@material-ui/icons/Cancel';
import { emphasize } from '@material-ui/core/styles/colorManipulator';
import PropTypes from 'prop-types';
import { ValueContainerProps } from 'react-select/src/components/containers';
import { ControlProps } from 'react-select/src/components/Control';
import { MenuProps, NoticeProps } from 'react-select/src/components/Menu';
import { OptionProps } from 'react-select/src/components/Option';
import { PlaceholderProps } from 'react-select/src/components/Placeholder';
import { SingleValueProps } from 'react-select/src/components/SingleValue';
import { MultiValueProps } from 'react-select/src/components/MultiValue';
import { ValueType } from 'react-select/src/types';

type OptionType = {
    label: string;
    value: any | any[];
};

function NoOptionsMessage(props: NoticeProps<OptionType>) {
    return (
        <Typography
            color="textSecondary"
            className={props.selectProps.classes.noOptionsMessage}
            {...props.innerProps}
        >
            {props.children}
        </Typography>
    );
}

NoOptionsMessage.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    selectProps: PropTypes.object.isRequired,
} as any;

type InputComponentProps = Pick<BaseTextFieldProps, 'inputRef'> & HTMLAttributes<HTMLDivElement>;

function inputComponent({ inputRef, ...props }: InputComponentProps) {
    return <div ref={inputRef} {...props} />;
}

inputComponent.propTypes = {
    inputRef: PropTypes.oneOfType([PropTypes.func, PropTypes.object]),
} as any;

function Control(props: ControlProps<OptionType>) {
    const {
        children,
        innerProps,
        innerRef,
        selectProps: { classes, TextFieldProps },
    } = props;

    return (
        <TextField
            fullWidth
            InputProps={{
                inputComponent,
                inputProps: {
                    className: classes.input,
                    ref: innerRef,
                    children,
                    ...innerProps,
                },
            }}
            {...TextFieldProps}
        />
    );
}

Control.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    innerRef: PropTypes.oneOfType([PropTypes.func, PropTypes.object]),
    selectProps: PropTypes.object.isRequired,
} as any;

function Option(props: OptionProps<OptionType>) {


    //const innerProps_id: string = props.innerProps.id;
    //const idx: number = Number(innerProps_id.substring(innerProps_id.lastIndexOf("-") + 1));

    //if (idx >= 5)
    //    return null;

    return (
        <MenuItem
            ref={props.innerRef}
            selected={props.isFocused}
            component="div"
            style={{
                fontWeight: props.isSelected ? 500 : 400,
                height: 0,
                minHeight: 24,
                lineHeight: 0,
                padding: '0px 10px 0px 10px',
                margin: 0,
            }}
            {...props.innerProps}
            title={props.children ? props.children.toString() : ""}
        >
            <span
                style={{
                    overflow: 'hidden',
                    textOverflow: 'ellipsis',
                    whiteSpace: 'nowrap',
                    lineHeight: 'initial',
                    maxWidth: 450
                }}
            >{props.children}</span>
        </MenuItem>
    );
}

Option.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    innerRef: PropTypes.oneOfType([PropTypes.func, PropTypes.object]),
    isFocused: PropTypes.bool,
    isSelected: PropTypes.bool,
} as any;

function Placeholder(props: PlaceholderProps<OptionType>) {
    return (
        <Typography
            color="textSecondary"
            className={props.selectProps.classes.placeholder}
            {...props.innerProps}
        >
            {props.children}
        </Typography>
    );
}

Placeholder.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    selectProps: PropTypes.object.isRequired,
} as any;

function SingleValue(props: SingleValueProps<OptionType>) {
    return (
        <Typography
            className={props.selectProps.classes.singleValue}
            {...props.innerProps}
            style={{
                overflow: 'hidden',
                textOverflow: 'ellipsis',
                whiteSpace: 'nowrap',
                maxWidth: 450
            }}
        >
            {props.children}
        </Typography>
    );
}

SingleValue.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    selectProps: PropTypes.object.isRequired,
} as any;

function ValueContainer(props: ValueContainerProps<OptionType>) {
    return <div className={props.selectProps.classes.valueContainer}>{props.children}</div>;
}

ValueContainer.propTypes = {
    children: PropTypes.node,
    selectProps: PropTypes.object.isRequired,
} as any;

function MultiValue(props: MultiValueProps<OptionType>) {
    return (
        <Chip
            tabIndex={-1}
            label={props.children}
            className={clsx(props.selectProps.classes.chip, {
                [props.selectProps.classes.chipFocused]: props.isFocused,
            })}
            color="primary"
            onDelete={props.removeProps.onClick}
            deleteIcon={<CancelIcon {...props.removeProps} />}
        />
    );
}

MultiValue.propTypes = {
    children: PropTypes.node,
    isFocused: PropTypes.bool,
    removeProps: PropTypes.object.isRequired,
    selectProps: PropTypes.object.isRequired,
} as any;

function Menu(props: MenuProps<OptionType>) {
    return (
        <Paper square className={props.selectProps.classes.paper} {...props.innerProps}>
            {props.children}
        </Paper>
    );
}

Menu.propTypes = {
    children: PropTypes.node,
    innerProps: PropTypes.object,
    selectProps: PropTypes.object,
} as any;

const components = {
    Control,
    Menu,
    MultiValue,
    NoOptionsMessage,
    Option,
    Placeholder,
    SingleValue,
    ValueContainer,
};

const styles = (theme: Theme) => ({
    root: {
    },
    input: {
        display: 'flex' as 'flex',
        padding: '0px 4px 0px 4px',
        height: 'unset',
        minHeight: '23px'
    },
    valueContainer: {
        display: 'flex' as 'flex',
        flexWrap: 'wrap' as 'wrap',
        flex: 1,
        alignItems: 'center',
        overflow: 'hidden' as 'hidden'
    },
    chip: {
        //margin: theme.spacing(0.5, 0.25),
        backgroundColor: theme.palette.primary.main,
        height: 22,
        '& > svg': {
            fontSize: '1rem'
        },
        marginTop: 2,
        marginRight: 2,
        '&:last-child': {
            marginBottom: 2
        }
    },
    chipFocused: {
        backgroundColor: emphasize(
            theme.palette.type === 'light' ? theme.palette.grey[300] : theme.palette.grey[700],
            0.08,
        ),
    },
    noOptionsMessage: {
        padding: theme.spacing(1, 2),
    },
    singleValue: {
        fontSize: 16
    },
    placeholder: {
        position: 'absolute' as 'absolute',
        left: 2,
        bottom: 6,
        fontSize: 16,
    },
    paper: {
        position: 'absolute' as 'absolute',
        zIndex: 1,
        marginTop: 0, //theme.spacing(1),
        left: 0,
        right: 0,
        display: 'table'
        /*backgroundColor: 'red',
        '& span': {
            minHeight: 0,
            padding: 0,
            lineHeight: 0,
            height: 10,
            backgroundColor: 'rgba(100, 100, 100, 0.1)',
            border: '5px solid purple',
            '&::before': {
                backgroundColor: 'red'
            }
        }*/
            //Dropdown menu
    },
    divider: {
        height: theme.spacing(1),
    },
    spanTest: {
        '& > div:first-child > div': {
            backgroundColor: 'white',
            borderRadius: 4,
            '& > div:first-child': {
                borderRadius: 4,
                border: '1px solid #CACACA',
                '&::before': {
                    borderBottom: 'none'
                }
            }
        }
    }
});

interface SelectFilteredState {
    single: ValueType<OptionType>;
    myTestValue: OptionType[];
}

interface SelectFilteredProps extends WithStyles<typeof styles> {
    label: string;
    placeholder: string;
    dataList: OptionType[];
    onChange: Function;
    selectedValues: OptionType[];
    allowMany?: Boolean;
}

class SelectFiltered extends React.PureComponent<SelectFilteredProps, SelectFilteredState> {

    constructor(props: SelectFilteredProps) {
        super(props);
        

        this.state = {
            single: this.getSelectedValues(),
            myTestValue: this.getSelectedValues()
        };
    }

    componentDidMount() {
        const selectedValues = this.getSelectedValues();

        this.setState({ single: selectedValues, myTestValue: selectedValues });
    }

    private getSelectedValues = (): OptionType[] => {
        const { selectedValues } = this.props;

        if (selectedValues.length == 1) {
            if (typeof selectedValues[0].value == 'number') {
                const value: number = Number(selectedValues[0].value);
                if (value < 0)
                    return [];
            }
        }

        return selectedValues;
    }

    private handleChangeSingle = (value: ValueType<OptionType>): void => {
        const { onChange } = this.props;
        const myTestValue: OptionType[] = Array.isArray(value) ? JSON.parse(JSON.stringify(value)) : [JSON.parse(JSON.stringify(value))];

        this.setState({ single: value, myTestValue});
        onChange(myTestValue);
    }

    private handleChangeMulti = (value: ValueType<OptionType>): void => {
        const { onChange } = this.props;
        const myTestValue: OptionType[] = Array.isArray(value) ? JSON.parse(JSON.stringify(value)) : [JSON.parse(JSON.stringify(value))];
        this.setState({ single: value, myTestValue });
        onChange(myTestValue);
    }

    private handleOnKeyDown_checkForBackspace = (keyCode: number): void => {
        if (keyCode === 8)
            this.setState({ single: [{ label: "", value: -1 }] });
    }

    private handleOnBlur_setCurrentSetValue = (): void => {
        const { myTestValue } = this.state;

        this.setState({ single: myTestValue });
    }

    public render() {
        const { classes, dataList, label, placeholder, allowMany } = this.props;
        const { single } = this.state;


        const selectStyles = {
            'div': {
                backgroundColor: 'red'
            },
            input: (base: CSSProperties) => ({
                ...base,
                color: "",
                '& input': {
                    font: 'inherit'
                },
                minWidth: 100,
                padding: 0
            })
        };

        //Remove extra spaces between words
        dataList.forEach(dl => { dl.label = dl.label.replace(/\s+/g, " "); });

        return (
            <span className={classes.spanTest}>
                {allowMany ?
                        (<Select
                        classes={classes}
                        styles={selectStyles}
                        inputId="react-select-multiple"
                        TextFieldProps={{
                            label: label,
                            InputLabelProps: {
                                htmlFor: 'react-select-multiple',
                                shrink: true,
                            },
                            placeholder: placeholder,
                        }}
                        options={dataList}
                        components={components}
                        value={single}
                        onChange={this.handleChangeMulti}
                        onKeyDown={(e) => { this.handleOnKeyDown_checkForBackspace(e.keyCode); }}
                        onBlur={this.handleOnBlur_setCurrentSetValue}
                        isMulti
                    />)
                    :
                        (<Select
                        classes={classes}
                        styles={selectStyles}
                        inputId="react-select-single"
                        TextFieldProps={{
                            label: label,
                            InputLabelProps: {
                                htmlFor: 'react-select-single',
                                shrink: true,
                            },
                            placeholder: placeholder,
                        }}
                        options={dataList}
                        components={components}
                        value={single}
                        onChange={this.handleChangeSingle}
                        onKeyDown={(e) => { this.handleOnKeyDown_checkForBackspace(e.keyCode); }}
                        onBlur={this.handleOnBlur_setCurrentSetValue}
                    />)
                }
                
            </span>
        );
    }
}

export default withStyles(styles)(SelectFiltered);
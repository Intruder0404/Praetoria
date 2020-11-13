import React from 'react';
import * as HttpStatus from 'http-status-codes';

// Storybook
import { WithSnackbarProps, withSnackbar } from 'cae-storybook/dist/lib';
import { MuiTheme, makeStyles } from 'cae-storybook/dist/theme';

// Components
import { SerialNumberGen, SerialNumberView, SerialNumberListAll } from 'Components';

// Models & Services
import { SerialNumber } from 'Models';
import { SerialNumberService, FetchReturnParser } from 'Services';

// i18n
import { withTranslation, WithTranslation } from 'react-i18next';

const useStyles = makeStyles<MuiTheme>(theme => ({
    SerialNumberGenViewContainer: {
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        marginBottom: theme.spacing(2),
        [theme.breakpoints.down("sm")]: {
            flexDirection: 'column'
        }
    },
    SerialNumberGen: {
        flex: 1,
        marginRight: theme.spacing(1)
    },
    SerialNumberView: {
        flex: 2,
        marginLeft: theme.spacing(1)
    }
}));

interface MADState {
    serialNumberString: string,
    serialNumberGenerationMessage: string,
    isCreated: boolean
}

export interface MADProps extends WithSnackbarProps, WithTranslation {
}

const MADFC: React.FC<MADProps> = props => {
    const { enqueueSnackbar, t } = props;
    const classes = useStyles();
    const [state, setState] = React.useState<MADState>({
        serialNumberString: "",
        serialNumberGenerationMessage: "",
        isCreated: false
    });
    const [serialNumbers, setSerialNumbers] = React.useState<SerialNumber[]>([]);
    const { serialNumberString, serialNumberGenerationMessage, isCreated } = state;
    
    const getAllSerialNumbers = React.useCallback((): void => {
        SerialNumberService.GetAll()
            .then(serialNumbers => setSerialNumbers(serialNumbers))
            .catch(error => enqueueSnackbar(error.toString(), { variant: "error" }));
    }, [enqueueSnackbar])

    React.useEffect(() => {
        getAllSerialNumbers()
    }, [getAllSerialNumbers]);


    const handleGenerateSerialNumber = (workOrder: string, client: string): void => {
        SerialNumberService.GenerateSerialNumber(workOrder, client)
            .then(tuple => {
                const serialNumberString: string = tuple.item1;
                const serialNumber: SerialNumber = tuple.item2;
                const status: number = tuple.item3;

                const completeDate: Date = new Date(serialNumber.completeDate);
                let isCreated: boolean = false;
                let serialNumberGenerationMessage: string = `${completeDate.toLocaleDateString()} ${completeDate.toLocaleTimeString()}`;
                
                switch (status) {
                    case HttpStatus.CREATED :
                        isCreated = true;
                        serialNumberGenerationMessage = t('generatedThe', { serialNumberGenerationMessage});
                        FetchReturnParser.Success(enqueueSnackbar, serialNumberGenerationMessage);
                        break;

                    case HttpStatus.OK :
                        isCreated = false;
                        serialNumberGenerationMessage = t('alreadyGeneratedThe', { serialNumberGenerationMessage});
                        FetchReturnParser.Warning(enqueueSnackbar, serialNumberGenerationMessage);
                        break;

                    case HttpStatus.CONFLICT :
                        isCreated = false;
                        serialNumberGenerationMessage = t('alreadyGeneratedWithOtherClient', { serialNumberGenerationMessage});
                        FetchReturnParser.Warning(enqueueSnackbar, serialNumberGenerationMessage);
                        break;
                }

                setState({ serialNumberString, serialNumberGenerationMessage, isCreated });
                getAllSerialNumbers();
             }).catch(error => {
                FetchReturnParser.Error(enqueueSnackbar, error);
             });
    }

    return (
        <>
            <div className={classes.SerialNumberGenViewContainer}>
                <SerialNumberGen className={classes.SerialNumberGen} handleGenerateSerialNumber={handleGenerateSerialNumber} />
                <SerialNumberView
                    className={classes.SerialNumberView}
                    serialNumberString={serialNumberString}
                    isCreated={isCreated}
                    serialNumberGenerationMessage={serialNumberGenerationMessage}
                />
            </div>
            <SerialNumberListAll serialNumbers={serialNumbers} />
        </>
    );
}

export const MAD = withTranslation('mad')(withSnackbar(MADFC));
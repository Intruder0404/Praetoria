import React from 'react';
import { makeStyles, MuiTheme } from 'cae-storybook/dist/theme';
import { withTranslation, WithTranslation } from 'react-i18next';

//Images and assets
import NotFoundImage from 'Assets/img/404_notFound.png';

const useStyles = makeStyles<MuiTheme>(theme => ({
    root: {
    },
    notFoundContainer: {
        minHeight: 'calc(100vh - 128px)',
        display: 'flex',
        flexDirection: 'column' as 'column',
        justifyContent: 'space-around',
        alignItems: 'center' as 'center',
        '& > div': {
            '& > h1': {
                textAlign: 'center' as 'center',
                fontSize: '8em'
            },
            '& > h3': {
                textAlign: 'center' as 'center',
                fontSize: '4em'
            }
        },
        '& > img': {
            width: '35vw',
            padding: 10
        }
    }
}));

export interface NotFoundProps extends WithTranslation {}
const NotFoundFC: React.FC<NotFoundProps> = (props) => {

    const { t } = props;
    const classes = useStyles();

    return (
        <div className={classes.notFoundContainer}>
            <div>
                <h1>{t('sorry')}</h1>
                <h3>{t('pageNotFound')}</h3>
            </div>
            <img src={NotFoundImage} alt={t('notFound')} />
        </div>
    );
}

export const NotFound = withTranslation('notFound')(NotFoundFC);
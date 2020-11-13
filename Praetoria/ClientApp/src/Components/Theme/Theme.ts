import { createMuiTheme } from '@material-ui/core/styles';

export default createMuiTheme({
    palette: {
        primary: {
            light: '#CCE6FF',
            main: '#005EB8'
            // dark: will be calculated from palette.primary.main,
            // contrastText: will be calculated to contrast with palette.primary.main
        },
        secondary: {
            main: '#841d33',
            dark: '#CACACA'
        },
        text: {
            primary: "#000",
            secondary: "#841d33"
        }
        // error: will use the default color
    },
    typography: {
        button: {
            
        }
    },
    /*overrides: {
        MuiButton: {
            label: {
                fontSize: 55
            }
        }
    }*/
});
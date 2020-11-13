enum EnvironmentType {
    Local = 1,
    Dev = 2,
    PreProd = 3,
    Prod = 4
}

export class GlobalEnvironment {

    static GetEnvironmentType(): EnvironmentType {
        const URL = window.location.href;
        let environmentType: EnvironmentType;
        environmentType = EnvironmentType.Local;
        /*if (URL.indexOf("localhost") > -1)
            environmentType = EnvironmentType.Local;
        else if (URL.indexOf("dev-gepcapp01") > -1)
            environmentType = EnvironmentType.Dev;
        else if (URL.indexOf("qas-gepcapp01") > -1)
            environmentType = EnvironmentType.PreProd;
        else
            environmentType = EnvironmentType.Prod;*/

        return environmentType;
    }

    static GetUrl_API(isHTTPS: boolean = false): string {

        const PROTOCOL: string = isHTTPS ? "https://" : "http://";
        return PROTOCOL + window.location.hostname + ':3000/'
        /*if (GlobalEnvironment.GetEnvironmentType() === EnvironmentType.Local)
            return PROTOCOL + window.location.hostname + ':3000/'
        else
            return PROTOCOL + window.location.hostname + '/OvertimeToolAPI/';*/
    }
}

import { ActionTypes } from "../actionTypes";
import {
    AvailableOptionAction, SetIsLoadingAction
} from "../actions/globalAction";
import { Loadable } from "../types";

export interface GlobalState extends Loadable {
    loading: boolean;
}

const initialState: GlobalState = {
    loading: false
}

const setIsLoading = (state: GlobalState, action: SetIsLoadingAction): GlobalState => {

    return {
        ...state,
        loading: action.payload
    }
}

// Main function que redux appel
export default (state: GlobalState = initialState, action: AvailableOptionAction): GlobalState => {
    switch (action.type) {
        case ActionTypes.SET_IS_LOADING:
            return setIsLoading(state, action);
        default:
            return state;
    }
}
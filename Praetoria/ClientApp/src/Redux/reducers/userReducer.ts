import { ActionTypes } from "../actionTypes";
import {
    AvailableOptionAction, SetUserAction
} from "../actions/userAction";

export interface UserState {
    userPermission: string;
}

const initialState: UserState = {
    userPermission: ""
}

const setUser = (state: UserState, action: SetUserAction): UserState => {

    return {
        ...state,
        userPermission: action.payload
    }
}

// Main function que redux appel
export default (state: UserState = initialState, action: AvailableOptionAction): UserState => {
    switch (action.type) {
        case ActionTypes.SET_USER:
            return setUser(state, action);
        default:
            return state;
    }
}
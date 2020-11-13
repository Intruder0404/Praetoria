import { Dispatch } from 'redux';
import { ActionTypes } from '../actionTypes';

export interface SetUserAction {
    type: ActionTypes.SET_USER,
    payload: string
}

export type AvailableOptionAction = SetUserAction;

const userAction = (userPermission: string) => {
    return {
        type: ActionTypes.SET_USER,
        payload: userPermission
    }
}

export const setUserAction = () => (dispatch: Dispatch) => {

    dispatch(userAction("user"));
}
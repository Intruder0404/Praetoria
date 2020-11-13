import { Dispatch } from 'redux';
import { ActionTypes } from '../actionTypes';

export interface SetIsLoadingAction {
    type: ActionTypes.SET_IS_LOADING,
    payload: boolean
}

export type AvailableOptionAction = SetIsLoadingAction;

const setIsLoadingAction = (isLoading: boolean) => {
    return {
        type: ActionTypes.SET_IS_LOADING,
        payload: isLoading
    }
}

export const isLoadingAction = (isLoading: boolean) => (dispatch: Dispatch) => {
    dispatch(setIsLoadingAction(isLoading));
}
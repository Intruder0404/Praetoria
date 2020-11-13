import { GlobalState } from "../reducers/globalReducer";
import { UserState } from "../reducers/userReducer";

export interface StoreState {
    globalState: GlobalState;
    userState: UserState;
}

export interface Loadable {
    loading: boolean;
}
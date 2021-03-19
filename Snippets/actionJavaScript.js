import { CONSTANT } from "constants";

const action = data => {
    return dispatch => {
        dispatch({ type: CONSTANT, data})
    }
}

export { action }



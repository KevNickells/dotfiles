import { CONSTANT } from "constants"

const reducer = function reducer(state = {}, action) {
    switch (action.type) {
        case CONSTANT :
            return action.thing
        default:
            return state;
    }
}

export default reducer

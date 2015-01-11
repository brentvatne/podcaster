# Return successful response, otherwise request
handleResponse = (key, params) ->
  (response) ->
    console.log 'hi from api: completed'
    if response.status == 200
      dispatch(key, response.responseJSON, params)
    else
      dispatch(key, ApiConstants.ERROR, params)

# Shortcut for dispatching
dispatch = ((key, response, params) ->
  payload =
    actionType: key
    response: response
    queryParams: params

  AppDispatcher.handleServerAction(payload)
)

# Public Interface
#
PodcasterApi = {
  logIn: (options) ->
    key = PodcasterConstants.LOG_IN
    params = user: options
    console.log 'hi from api: pending'
    dispatch(key, ApiConstants.PENDING, params)

    $.post('/sessions', params).
      complete(handleResponse(key, params))
}

window.PodcasterApi = PodcasterApi

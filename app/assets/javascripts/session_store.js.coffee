_currentUser = null

store = FluxUtil.createStore({
  isLoggedIn: ->
    _currentUser != null

  getCurrentUser: ->
    _currentUser

  dispatcherIndex: AppDispatcher.register((payload) ->
    action = payload.action
    return true if action.response == ApiConstants.PENDING

    switch action.actionType
      when PodcasterConstants.LOG_IN
        console.log 'hi from store'
        # _currentUser = action.
        store.emitChange(action)
      else
        # Nothing

    true
  )
})

window.SessionStore = store

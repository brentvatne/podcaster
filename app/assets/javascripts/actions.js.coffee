Actions = {
  logIn: (options) ->
    console.log 'hi from actions'
    PodcasterApi.logIn(options)
}

window.Actions = Actions

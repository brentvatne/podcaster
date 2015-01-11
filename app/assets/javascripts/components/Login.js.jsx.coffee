
LoginForm = React.createClass({
  getInitialState: ->
      email: ""
      password: ""

  render: ->
    `<form onSubmit={this.login}>
      <input type="text" ref="email" onChange={this.updateFormState} placeholder="phildunphy@phil.com"/>
      <input type="password" ref="password" onChange={this.updateFormState} placeholder="password"/>
      <button className="bg-blue">
        Login
      </button>
    </form>`
  updateFormState: ->
    @setState({
      email: this.refs.email.getDOMNode().value
      password: this.refs.password.getDOMNode().value
    })

  login: (e)->
    e.preventDefault()
    Actions.logIn(@state)
})

window.LoginForm = LoginForm

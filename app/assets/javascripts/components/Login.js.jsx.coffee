
LoginForm = React.createClass({
	getInitialState: ->
		{
			email: ""
			password: ""

		}
	render: ->
		`<form>
			<input type="text" ref="email" onChange={this.updateFormState} placeholder="phildunphy@phil.com"/>
			<input type="text" ref="password" onChange={this.updateFormState} placeholder="password"/>
			<button onClick={this.login} className="bg-blue"> Login </button>
		</form>`
	updateFormState: ->
		@setState({
			email: this.refs.email.getDOMNode().value
			password: this.refs.password.getDOMNode().value
		})

	login: (e)->
		e.preventDefault()
		Actions.login(@state)
})

window.LoginForm = LoginForm
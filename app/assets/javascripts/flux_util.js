(function() {
  var FluxStore = _.extend(EventEmitter.prototype, {
    emitChange: function(data) {
      this.emit('change', data);
    },

    addChangeListener: function(callback) {
      this.on('change', callback)
    },

    removeChangeListener: function(callback) {
      this.removeListener('change', callback)
    }
  });

  var FluxUtil = {
    // Shortcut for defining constants
    //
    defineConstants: function(constantNames) {
      var constants = {};
      _.each(constantNames, (function(constantName) {
        constants[constantName] = constantName;
      }));

      return constants;
    },

    // Save the boilerplate of defining handleViewAction..
    //
    createDispatcher: function(options) {
      var dispatcher;

      // Default create a handleViewAction function
      options = options || {
        handleViewAction: function(action) {
          this.dispatch({
            source: 'VIEW_ACTION',
            action: action
          })
        },

        handleServerAction: function(action) {
          this.dispatch({
            source: 'SERVER_ACTION',
            action: action
          })
        }
      }

      dispatcher = _.extend(Dispatcher.prototype, options);
      dispatcher.constructor();
      return dispatcher;
    },

    createStore: function(options) {
      return _.extend(_.clone(FluxStore), options);
    }
  }

  window.FluxUtil = FluxUtil;
})();

angular.module('podcaster.resources').
  factory('Podcast', ['$http', function($http) {
    return {
      attributes: {},
      get: function() {
        self = this;

        return $http.get('/api/podcast').then(function(response) {
          self.attributes = response.data;
          return response.data;
        });
      },
      save: function(updatedAttributes) {
        self = this;

        var oldAttributes = this.attributes;
        this.attributes = updatedAttributes;

        return $http.put('/api/podcast', {podcast: updatedAttributes}).
          then(function(response) {
            return response.data;
          });
      }
    }
  }])

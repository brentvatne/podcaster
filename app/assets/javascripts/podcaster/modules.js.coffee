angular.module('podcaster.resources', [])
angular.module('podcaster.controllers', [])

angular.module('podcaster', [
  'ui.router',
  'templates',
  'podcaster.resources',
  'podcaster.controllers'
])

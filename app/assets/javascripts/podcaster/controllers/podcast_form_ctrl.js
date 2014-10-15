angular.module('podcaster.controllers').
  controller('PodcastFormCtrl', ['$scope', 'Podcast', function($scope, Podcast) {

    Podcast.get().then(function(podcast) {
      $scope.podcast = podcast;
      debugger
    })

  }])

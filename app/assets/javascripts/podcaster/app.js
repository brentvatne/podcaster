angular.module('podcaster').config(function($stateProvider, $urlRouterProvider) {
  // For any unmatched url, redirect to /state1
  $urlRouterProvider.otherwise("/podcast");

  //
  // Now set up the states
  $stateProvider
    .state('podcast', {
      url: "/podcast",
      templateUrl: "podcast.html",
      controller: function($scope, Podcast) {
        Podcast.get().then(function(podcast) {
          $scope.podcast = podcast;
        });
      }
    })
    .state('podcast-edit', {
      url: "/podcast/edit",
      templateUrl: "podcast.edit.html",
      controller: function($scope, $timeout, Podcast) {
        $scope.notice = null;
        $scope.showNotice = function(text, time) {
          $scope.notice = text;
          $timeout((function() {
            $scope.notice = null;
          }), time)
        }

        $scope.savePodcast = function() {
          $scope.loading = true;
          $timeout((function() {
            Podcast.save($scope.podcast).then(function(data) {
              $scope.showNotice('Saved successfully!', 5000)
              $scope.loading = false;
            });
          }), 1000);
        }

        Podcast.get().then(function(podcast) {
          $scope.podcast = podcast;
        });
      }
    })
});

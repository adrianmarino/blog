@IndexCtrl = ($scope, $location, $http, $routeParams, postService) ->
  $scope.data = postService.data

  postService.all()

  $scope.viewPost = (postId) -> $location.url "/post/#{postId}"
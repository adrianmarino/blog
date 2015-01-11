@PostIndexCtrl = ($scope, $location, $http, $routeParams, postService) ->
  
  # View binding...

  $scope.data = postService.data

  # Invoke service...

  postService.all()

  # Controller redirection...

  $scope.viewPost = (postId) -> $location.url "/post/#{postId}"
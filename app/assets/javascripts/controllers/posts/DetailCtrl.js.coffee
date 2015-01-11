@PostDetailCtrl = ($scope, $routeParams, postService) ->
  
  # View binding...

  $scope.data =
    postId: $routeParams.postId
    posts: postService.data.posts

  # Invoke service...
  
  postService.all()
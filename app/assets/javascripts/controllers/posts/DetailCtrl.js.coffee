@PostDetailCtrl = ($scope, $routeParams, postService) ->
  $scope.data =
    postId: $routeParams.postId
    posts: postService.data.posts
  
  postService.all()
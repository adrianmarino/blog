angular.module('Blog').factory('postService', ['$http', ($http) ->

  # Result binding...

  postService =
    data:
      posts: [{title: 'Loading...', contents: ''}]

  # Service methods...
  
  postService.all = ->
      $http.get('/posts.json').success( (a_response) ->
        postService.data.posts = a_response
      ).error( -> console.error 'Failed to load posts!')

  postService
])
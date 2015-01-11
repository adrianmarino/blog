angular.module('Blog').factory('postService', ['$http', ($http) ->

  postService =
    data:
      posts: [{title: 'Loading...', contents: ''}]

  postService.all = ->
      $http.get('./posts.json').success( (a_response) ->
        postService.data.posts = a_response
        console.log('Successfully loaded posts!')
      ).error( ->
        console.error('Failed to load posts!')
      )

  return postService
])
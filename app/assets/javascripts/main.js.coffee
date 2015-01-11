# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/main
#= require_tree ./directives/main
#= require_tree ./filters/main
#= require_tree ./services/main

# Creates new Angular module called 'Blog'
Blog = angular.module('Blog', ['ngRoute'])

# Sets up routing
Blog.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/post/:postId', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])

Blog.factory('postService', ['$http', ($http) ->

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
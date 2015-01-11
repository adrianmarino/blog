class PostsController < ApplicationController
	respond_to :json

	# -------------------------------------------------------------------------
	# Public Methods
	# -------------------------------------------------------------------------

	def index
		result = Post.all
		respond_with(result) { |format| format.json {render json: result.as_json} }
	end

end

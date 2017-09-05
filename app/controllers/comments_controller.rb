class CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		comment_params = params.require(:comment).permit(:author, :body)
		post.comments.create(comment_params)
		redirect_to post_path(id: post.id)
	end


end
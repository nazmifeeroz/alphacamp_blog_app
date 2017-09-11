class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = @post.comments.build
	end

	def new
		@post = Post.new
	end

	def create
		post_params = params[:post].permit(:title, :author, :content)
		@post = Post.create(post_params)
		if @post.persisted?
			flash[:success] = "New post created."
			redirect_to post_path(id: @post.id)
		else
			flash[:danger] = "Fields are blank."
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])

	end

	def update 
		post_params = params[:post].permit(:title, :author, :content)
		post = Post.find(params[:id])
		post.update(post_params)
		flash[:success] = "Post updated"
		redirect_to post_path(id: post.id)
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		flash[:danger] = "Post deleted."
		redirect_to posts_path
	end

end
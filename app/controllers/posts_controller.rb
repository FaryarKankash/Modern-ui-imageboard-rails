class PostsController < ApplicationController
    def create
        @category_id = params[:post][:category_id]
        @user_id = request.remote_ip
        @category = Category.find(@category_id)
        @post = Post.new(params.require(:post).permit(:title, :content, :url, :category_id))
        @post.category = @category
        @post.user_id = @user_id
        @post.save
        @ip = request.remote_ip
        redirect_to root_path
    end

    def show
        @ip = request.remote_ip
        @post = Post.find(params[:id])
        @comments = @post.comment
    end
end
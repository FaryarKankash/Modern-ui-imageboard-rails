class CommentsController < ApplicationController
    def create
        @user_id = request.remote_ip
        @comment = Comment.new(params.require(:comment).permit(:content, :post_id))
        @comment.user_id = @user_id
        @comment.save
        redirect_to root_path
    end
end
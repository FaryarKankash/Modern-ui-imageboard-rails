class CategoriesController < ApplicationController
    def show
        @category = Category.find(params[:id])
        @ip = request.remote_ip
        @posts = @category.post
    end
    
end
class PostsController < ApplicationController
    def index
        @posts = Post.all.order('published_at DESC')
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render :edit
        end
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render :new
        end
    end


    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_url
    end

private
    def post_params
        params.require(:post).permit(:title, :description,:name, :published_at)
    end
end
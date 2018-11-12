class BlogsController < ApplicationController
  def index
      @user = User.find(params[:user_id])
      @blogs = @user.blogs
  end

  def show
      @blog = Blog.find(params[:id])
  end

  def new
      @user = User.find(params[:user_id])
      @blog = Blog.new
      @category = Category.all

  end

  def create
      @blog = User.find(params[:user_id]).blogs.build(blog_params)
      @blog.save
      redirect_to user_blogs_path
  end

  def edit
  end

  private

  def blog_params
      params.require(:blog).permit(:title, :content)
  end
end

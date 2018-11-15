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
      @blog = current_user.blogs.build
      @category = Category.all

  end

  def create
      @blog = current_user.blogs.build(blog_params)
      @blog.save
      redirect_to user_blog_path(:user_id,@blog)
  end

  def edit
    @user = current_user
    @blog = Blog.find(params[:id])
    @category = Category.all
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to user_blog_path
  end

  def list
      @blogs = Blog.all
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to current_user
  end

  private

  def blog_params
      params.require(:blog).permit(:title, :content,:category_id, :thumbnail)
  end

end

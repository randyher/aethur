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
  end
  def list
      @blogs = Blog.all
  end
  private

  def blog_params
      params.require(:blog).permit(:title, :content,:category_id, :thumbnail)
  end
 
end

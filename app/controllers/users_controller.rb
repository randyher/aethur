class UsersController < ApplicationController
    def show
          @user = User.find(params[:id])
          @videos = @user.videos
          @blogs = @user.blogs

      end

      def new
          @user = User.new
      end

      def create
          @user = User.new(user_params)
          @user.saveredirect_to @user
      end

      def edit
        @user = current_user
        @video = Video.find(params[:id])
        @category = Category.all
      end

      def update
        @video = Video.find(params[:id])
        @video.update(video_params)
        redirect_to user_video_path
      end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end
end

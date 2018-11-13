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
          @user.save
              redirect_to @user

      end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end
end

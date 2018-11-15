class UsersController < ApplicationController
    def show
          @user = User.find(params[:id])
          @videos = @user.videos
          @blogs = @user.blogs

      end



      def add_bio
        @user = current_user
      end

      def update
        @user = current_user
        @user.update(user_params)
        redirect_to @user
      end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :bio)
    end
end

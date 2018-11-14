class VideosController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @videos = @user.videos

    end

    def show
        @video = Video.find(params[:id])
    end

    def new
        @user = User.find(params[:user_id])
        @video = current_user.videos.build
        @category = Category.all

    end

    def create
        @video = current_user.videos.build(video_params)
        @video.save
        redirect_to user_video_path(:user_id,@video)
    end

    def edit
    end
    def list
        @videos = Video.all
    end

    private

    def video_params
        params.require(:video).permit(:title, :vidurl,:description,:category_id,:thumbnail)
    end
end

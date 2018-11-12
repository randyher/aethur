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
        @video = Video.new
        @category = Category.all

    end

    def create
        @video = User.find(params[:user_id]).videos.build(video_params)
        @video.save
        redirect_to user_videos_path
    end

    def edit
    end

    private

    def video_params
        params.require(:video).permit(:title, :vidurl,:description,:category_id)
    end
end

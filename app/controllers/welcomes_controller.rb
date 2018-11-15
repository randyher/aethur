class WelcomesController < ApplicationController

    def home
      @user = current_user
      @blogs = Blog.all
      @videos = Video.all
    end

end

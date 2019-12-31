class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_clips = @user.clips.count
  end
end

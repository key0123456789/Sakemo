class ClipsController < ApplicationController

  def create
    @user_id = current_user.id
    @brand_id = Brand.find(params[:id]).id
    if Clip.create(user_id: @user_id, brand_id: @brand_id)
      redirect_back(fallback_location: root_path)
    end
  end
  
  def destroy
    @user_id = current_user.id
    @brand_id = Brand.find(params[:id]).id
    if clip = Clip.find_by(user_id: @user_id, brand_id: @brand_id)
      clip.delete
      redirect_back(fallback_location: root_path)
    else
      redirect_to root_path
    end
  end

end

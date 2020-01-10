class BrewagesController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
    @brewage = @brand.brewages.find(params[:brand_id])
    @user = User.find(@brewage.user_id)
  end

  def new
    redirect_to login_url unless user_signed_in?
    @brand = Brand.find(params[:brand_id])
    @brewage = Brewage.new
  end
  
  def create
    @brand = Brand.find(params[:brand_id])
    @brewage = Brewage.create(brewage_params)
    if @brewage.save
      redirect_to brand_brewage_path(@brewage, @brand)
    else
      render :new
    end
  end

  def destroy
    brewage = Brewage.find(params[:brand_id])
    if brewage.destroy
      redirect_to brand_path(brewage.brand_id)
    end
  end

  private

  def brewage_params
    params.require(:brewage).permit(:id, :name, :image).merge(brand_id: params[:brand_id], user_id: current_user.id)
  end
end

class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def search
    @brands = Brand.search(params[:search]).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    
  end

end

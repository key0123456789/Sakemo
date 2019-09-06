class BrandsController < ApplicationController
  def index
    @brands = Brand.search(params[:search])
  end

  def search
    @brands = Brand.search(params[:search])
  end

end

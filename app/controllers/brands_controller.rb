class BrandsController < ApplicationController
  def index
    @brands = Brand.search(params[:search])
  end

end

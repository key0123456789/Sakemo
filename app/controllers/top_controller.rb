class TopController < ApplicationController
  
  def search
    @keyword = "%#{params[:keyword]}%"
    return nil if params[:keyword] == ""
    @brands = Brand.find_by_sql(['select * from brands where name LIKE ? OR name_kana LIKE ? ORDER BY created_at DESC LIMIT 30', @keyword, @keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end
  
end

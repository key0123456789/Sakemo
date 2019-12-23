class TopController < ApplicationController
  
  def search
    keyword = "%#{params[:keyword]}%"
    return nil if params[:keyword] == ""
    @brands = Brand.find_by_sql(['select * from brands where name LIKE ? OR name_kana LIKE ? LIMIT 20', keyword, keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end
  
end

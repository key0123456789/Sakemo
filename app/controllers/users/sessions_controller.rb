class Users::SessionsController < Devise::SessionsController
  # before_action :redirect_root, only: :logout
  
  # GET /resource/sign_in
  def newÓ
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  def logout

  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  private

  def redirect_root
    redirect_to root_path unless user_signed_in?
  end

end

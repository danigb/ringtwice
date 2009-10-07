class UsersController < ApplicationController
  inherit_resources
  
  respond_to :html, :xml, :json
  before_filter :require_user

  def show
    @user = (params[:id].blank? || is_admin?) ? current_user : User.find(params[:id])
    show!
  end

  def create
    create! do |success, failure|
      success.html { redirect_to login_path }
    end
  end

end

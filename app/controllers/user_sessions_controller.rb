class UserSessionsController < ApplicationController
  inherit_resources
  respond_to :html
  actions :new, :create, :destroy

  def create
    create! do |format|
      format.html { redirect_to_stored_or account_path}
    end
  end

  def destroy
    destroy! { login_url }
  end
end

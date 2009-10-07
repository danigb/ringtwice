class UserSessionsController < ApplicationController
  inherit_resources
  respond_to :html
  actions :new, :create, :destroy

  def create
    create! do |success|
      success.html { redirect_to root_path}
    end
  end
  
  def destroy
    destroy!do |success|
      success.html { redirect_to root_path}
    end
  end
end

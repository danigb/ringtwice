class GroupsController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project

  def create
    create! do |success|
      success.html { redirect_to @project}
    end
  end
end

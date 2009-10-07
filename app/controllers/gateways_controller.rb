class GatewaysController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => [:index, :show]
  respond_to :html, :xml, :json
  belongs_to :project

  def show
    redirect_to project_path(params[:project_id])
  end
end

class GatewaysController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => [:index, :show]
  respond_to :html, :xml, :json
  belongs_to :project

  def show
    redirect_to edit_project_gateway_path(params[:project_id], params[:id])
  end
end

class TemplatesController < ApplicationController
  before_filter :require_user

  inherit_resources
  defaults :resource_class => Template, :collection_name => 'templates', :instance_name => 'tmpl'
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project


  def show
    redirect_to project_path(params[:project_id])
  end
end

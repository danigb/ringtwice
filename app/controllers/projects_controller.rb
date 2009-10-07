class ProjectsController < ApplicationController
  before_filter :require_user
  
  inherit_resources
  respond_to :html, :xml, :json
  belongs_to :user
  
end

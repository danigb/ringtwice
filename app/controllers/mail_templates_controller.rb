class MailTemplatesController < ApplicationController
  before_filter :require_user
  before_filter :obtain_parameters, :only => :show
  
  inherit_resources
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project

  def index
    redirect_to project_path(params[:project_id])
  end

  private
  def obtain_parameters
    @test = params[:test]
  end

end

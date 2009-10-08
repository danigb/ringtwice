class MailsController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project

  def show
    redirect_to project_path(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @mail = Mail.new(params[:mail])
    @mail.user_id = current_user.id
    create!
  end

  def show
    redirect_to project_path(params[:project_id])
  end
end
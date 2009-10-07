class TemplatesController < ApplicationController
  before_filter :require_user

  inherit_resources
  defaults :resource_class => Template, :collection_name => 'templates', :instance_name => 'tmpl'
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project

  def create
    @tmpl = Template.new(params[:template])
    saved = @tmpl.save
    respond_to do |format|
      format.html {saved ? redirect_to(@tmpl.project) : render(:action => 'edit')}
    end
  end

  def update
    @tmpl = Template.find(params[:id])
    updated = @tmpl.update_attributes(params[:template])
    respond_to do |format|
      format.html {updated ? redirect_to(@tmpl.project) : render(:action => 'edit')}
    end
  end
end

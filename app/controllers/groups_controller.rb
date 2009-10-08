class GroupsController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => :index
  respond_to :html, :xml, :json
  belongs_to :project

end

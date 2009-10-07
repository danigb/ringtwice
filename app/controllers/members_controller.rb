class MembersController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => [:index, :show]
  respond_to :html, :xml, :json
  belongs_to :group
end

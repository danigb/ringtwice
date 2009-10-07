class MembersController < ApplicationController
  before_filter :require_user

  inherit_resources
  actions :all, :except => [:index, :show]
  respond_to :html, :xml, :json
  belongs_to :group

  def create
    create! do |success|
      success.html {redirect_to @member.group.path}
    end
  end

  def update
    update! do |success|
      success.html {redirect_to @member.group.path}
    end
  end

  def destroy
    destroy! do |success|
      success.html {redirect_to @member.group.path}
    end
  end
end

class Member < ActiveRecord::Base
  belongs_to :group

  validates_presence_of :name, :email, :group

  def to_param
    "#{id}-#{name.parameterize}"
  end


  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << group.project
    url << group
    url << self
    url
  end
end

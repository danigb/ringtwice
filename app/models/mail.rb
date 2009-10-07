class Mail < ActiveRecord::Base
  belongs_to :group
  belongs_to :gateway
  belongs_to :template
  belongs_to :project

  validates_presence_of :recipients, :user

  def to_param
    "#{id}-#{name.parameterize}"
  end

  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self.project
    url << self
    url
  end
end

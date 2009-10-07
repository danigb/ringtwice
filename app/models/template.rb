class Template < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name, :project

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

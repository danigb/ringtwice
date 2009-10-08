class Gateway < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name, :protocol

  def smtp_options
    if protocol == 'smtp'
      {:host => host, :port => port, :user => user, :password => password, :auth => auth, :domain => domain}
    else
      {}
    end
  end

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

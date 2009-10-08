class MailTemplate < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name, :project, :processor

  DEFAULTS = {:mime_version => '1.0', :charset => 'UTF-8', :content_type => 'text/html'}
  PROCESSORS = [:mustache]

  def initialize(options = {})
    super(options.merge(DEFAULTS))
  end

  def render(values = {})
    if processor == 'mustache'
      Mustache.render(body, values)
    else
      body
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

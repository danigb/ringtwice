class Mail < ActiveRecord::Base
  belongs_to :group
  belongs_to :gateway
  belongs_to :template
  belongs_to :project

  after_create :send_mail

  validates_presence_of :user_id, :group, :gateway

  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self.project
    url << self
    url
  end

  private
  def send_mail
    ee
  end
  def ee
    group.members.each do |member|
      Pony.mail(:to => member.email,:from => from, :subject => subject, :body => body,
        :via => gateway.protocol, :smtp => gateway.smtp_options)
    end
  end
end

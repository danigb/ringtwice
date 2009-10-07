class Group < ActiveRecord::Base
  belongs_to :project
  has_many :members

  validates_presence_of :name, :project_id


  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self.project
    url << self
    url
  end
end

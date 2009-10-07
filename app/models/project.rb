class Project < ActiveRecord::Base
  belongs_to :user
  has_many :groups
  has_many :templates

  validates_presence_of :name, :user
  
  def to_param
    "#{id}-#{name.parameterize}"
  end


  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self
  end
end

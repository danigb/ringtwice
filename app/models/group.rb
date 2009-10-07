class Group < ActiveRecord::Base
  belongs_to :project
  has_many :members

  validates_presence_of :name, :project_id
end

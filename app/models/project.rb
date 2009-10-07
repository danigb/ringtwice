class Project < ActiveRecord::Base
  belongs_to :user
  has_many :groups

  validates_presence_of :name, :user

  def to_param
    "#{id}-#{name}"
  end
end

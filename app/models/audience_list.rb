class AudienceList < ActiveRecord::Base
  belongs_to :project
  has_many :members
end

class Prop < ActiveRecord::Base
  attr_accessible :project_id, :user_id

  validates_presence_of :project_id, :user_id
end

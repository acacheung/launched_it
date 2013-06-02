class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_admin, :last_name, :password, :username

  validates_presence_of :email, :first_name, :last_name, :password, :username
  validates :email, :format => { :with=>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :allow_blank => true
end

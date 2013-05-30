class Project < ActiveRecord::Base
  attr_accessible :code_base_url, :contact_email, :description, :name, :url

  validates_presence_of :code_base_url, :description, :name, :url
end

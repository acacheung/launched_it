class Project < ActiveRecord::Base
  attr_accessible :code_base_url, :contact_email, :description, :name, :url
end

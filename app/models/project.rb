class Project < ActiveRecord::Base
  attr_accessible :code_base_url, :contact_email, :description, :name, :url

  validates_presence_of :code_base_url, :description, :name, :url

  validates :url, :format => { :with => /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ }
  validates :code_base_url, :format => { :with => /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ }
  validates :contact_email, :format => { :with=>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :allow_blank => true

  has_many :comments
end
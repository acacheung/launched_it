class Project < ActiveRecord::Base
  attr_accessible :code_base_url, :contact_email, :description, :name, :url

  validates_presence_of :code_base_url, :description, :name, :url

  validates :url, :format => { :with => /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ }

  validates :code_base_url, :format => { :with => /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ }

  validates_format_of :contact_email, 
    :with=>/\.(jpeg|jpg|png|gif)$/i, 
    :allow_blank => true
end

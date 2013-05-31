require 'spec_helper'

describe "Portfolios" do
  describe "GET /portfolios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit portfolios_path
      expect(page.status_code).to eql(200)
    end
  end

  describe "Viewing Portfolios" do
    it 'shows project info when you view that project' do
      proj = Project.create(:name => 'Ben', :url => 'www.google.com', :code_base_url => 'www.google.com', :description => 'meow')
      visit project_path(proj.id)
      page.should have_content 'Ben'
    end

    it 'will error if a user tries to view a project that does not exist' do
      Project.create(:name => 'Ben', :url => 'www.google.com', :code_base_url => 'www.google.com', :description => 'meow')
      nonexistant = Project.count + 1
      visit project_path(nonexistant)
      page.should have_content 'Application Not Found'
    end
  end
end
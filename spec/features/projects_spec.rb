require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit projects_path
      expect(page.status_code).to eql(200)
    end

    it "creates a new project when all information is filled in" do
      visit '/projects/new'
      fill_in "Name", :with => ''
      fill_in "Url", :with => ''
      fill_in "Code base url", :with => ''
      fill_in "Description", :with => ''
      fill_in "Contact email", :with => ''
      click_button "Create Project"
      page.should have_content("can't be blank")
    end
  end
end

require 'spec_helper'

describe "Props" do
  describe "GET /props" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit props_path
      expect(page.status_code).to eql(200)
    end

    it "cannot create props without the required fields" do
      visit '/props/new'
      fill_in "User", :with => ''
      fill_in "Project", :with => ''
      click_button "Create Prop"
      page.should have_content("can't be blank")
    end
  end
end

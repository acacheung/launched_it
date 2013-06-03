require 'spec_helper'

describe "Portfolios" do
  describe "GET /portfolios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit portfolios_path
      expect(page.status_code).to eql(200)
    end

    it "cannot have a portfolio without project id and user id" do
      visit '/portfolios/new'
      fill_in "User", :with => ''
      fill_in "Project", :with => ''
      click_button "Create Portfolio"
      page.should have_content("Project can't be blank")
    end
  end
end
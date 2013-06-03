require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit users_path
      expect(page.status_code).to eql(200)
    end

  it "cannot create user without all required fields" do
    visit '/users/new'
    fill_in "Username", :with => ''
    fill_in "Password", :with => ''
    fill_in "Email", :with => ''
    fill_in "First name", :with => ''
    fill_in "Last name", :with => ''
    click_button "Create User"
    page.should have_content("can't be blank")
  	end
  end
end

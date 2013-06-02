require 'spec_helper'

describe "Comments" do
  describe "GET /comments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit comments_path
      expect(page.status_code).to eql(200)
    end

    it 'cannot submit comment without all required fields' do
      visit '/comments/new'
      fill_in 'First name', :with => ''
      fill_in 'Last name', :with => ''
      fill_in 'Email', :with => ''
      fill_in 'User', :with => ''
      fill_in 'Project', :with => ''
      click_button 'Create Comment'
      page.should have_content("can't be blank")
    end

    # it 'most recent comment shows up last' do
    #   visit '/projects/new'
    #   fill_in 'Name', :with => 'Breakable Toy'
    #   fill_in 'Url', :with => 'google.com'
    #   fill_in 'Code base url', :with => 'github.com'
    #   fill_in 'Description', :with => 'Yay beautiful app'
    #   click_button 'Create Project'
    # end
  end
end
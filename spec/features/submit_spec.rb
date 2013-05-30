require 'spec_helper'

describe "Project Submissions" do
  # Must specify proj name, url, codebase url and a description
  # Must specify valid url
  # Must specify valid codebase url
  # optional contact email for project
  # if opt contact email specified, should validate is valid email

  it 'valid submission must have a project name, url, codebase url and description' do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'www.google.com'
    fill_in 'Code base url', :with => 'www.github.com'
    fill_in 'Description', :with => 'Yay beautiful app'
    click_button 'Create Project'
    page.should have_content("successfully created")
  end

  it 'does not submit if required fields are missing' do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => ''
    fill_in 'Url', :with => ''
    fill_in 'Code base url', :with => ''
    fill_in 'Description', :with => ''
    click_button 'Create Project'
    page.should have_content("can't be blank")
  end
end
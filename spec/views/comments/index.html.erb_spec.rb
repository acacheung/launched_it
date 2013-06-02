require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :body => "Body",
        :user_id => 1,
        :project_id => 2
      ),
      stub_model(Comment,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :body => "Body",
        :user_id => 1,
        :project_id => 2
      )
    ])
  end

  # it "renders a list of comments" do
  #   render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "First Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Email".to_s, :count => 2
  #   assert_select "tr>td", :text => "Body".to_s, :count => 2
  #   assert_select "tr>td", :text => 1.to_s, :count => 2
  #   assert_select "tr>td", :text => 2.to_s, :count => 2
  # end
end

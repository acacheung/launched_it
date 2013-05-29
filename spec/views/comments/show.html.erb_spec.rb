require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :body => "Body",
      :user_id => 1,
      :project_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Body/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :url => "Url",
        :code_base_url => "Code Base Url",
        :description => "MyText",
        :contact_email => "MyText"
      ),
      stub_model(Project,
        :name => "Name",
        :url => "Url",
        :code_base_url => "Code Base Url",
        :description => "MyText",
        :contact_email => "MyText"
      )
    ])
  end

  # it "renders a list of projects" do
  #   render
  #   Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Url".to_s, :count => 2
  #   assert_select "tr>td", :text => "Code Base Url".to_s, :count => 2
  #   assert_select "tr>td", :text => "MyText".to_s, :count => 2
  #   assert_select "tr>td", :text => "MyText".to_s, :count => 2
  # end
end

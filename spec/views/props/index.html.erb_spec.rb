require 'spec_helper'

describe "props/index" do
  before(:each) do
    assign(:props, [
      stub_model(Prop,
        :user_id => 1,
        :project_id => 2
      ),
      stub_model(Prop,
        :user_id => 1,
        :project_id => 2
      )
    ])
  end

  it "renders a list of props" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

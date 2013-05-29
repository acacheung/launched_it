require 'spec_helper'

describe "props/show" do
  before(:each) do
    @prop = assign(:prop, stub_model(Prop,
      :user_id => 1,
      :project_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

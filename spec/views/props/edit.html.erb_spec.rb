require 'spec_helper'

describe "props/edit" do
  before(:each) do
    @prop = assign(:prop, stub_model(Prop,
      :user_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit prop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prop_path(@prop), "post" do
      assert_select "input#prop_user_id[name=?]", "prop[user_id]"
      assert_select "input#prop_project_id[name=?]", "prop[project_id]"
    end
  end
end

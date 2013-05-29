require 'spec_helper'

describe "portfolios/new" do
  before(:each) do
    assign(:portfolio, stub_model(Portfolio,
      :user_id => 1,
      :project_id => 1
    ).as_new_record)
  end

  it "renders new portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", portfolios_path, "post" do
      assert_select "input#portfolio_user_id[name=?]", "portfolio[user_id]"
      assert_select "input#portfolio_project_id[name=?]", "portfolio[project_id]"
    end
  end
end

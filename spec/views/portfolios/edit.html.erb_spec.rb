require 'spec_helper'

describe "portfolios/edit" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :user_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do
      assert_select "input#portfolio_user_id[name=?]", "portfolio[user_id]"
      assert_select "input#portfolio_project_id[name=?]", "portfolio[project_id]"
    end
  end
end

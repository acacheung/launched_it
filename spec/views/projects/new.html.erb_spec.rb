require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :url => "MyString",
      :code_base_url => "MyString",
      :description => "MyText",
      :contact_email => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_url[name=?]", "project[url]"
      assert_select "input#project_code_base_url[name=?]", "project[code_base_url]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "textarea#project_contact_email[name=?]", "project[contact_email]"
    end
  end
end

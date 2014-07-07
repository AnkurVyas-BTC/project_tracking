require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :code => "MyString",
      :description => "MyString",
      :billing_type => "MyString",
      :github_url => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_code[name=?]", "project[code]"
      assert_select "input#project_description[name=?]", "project[description]"
      assert_select "input#project_billing_type[name=?]", "project[billing_type]"
      assert_select "input#project_github_url[name=?]", "project[github_url]"
      assert_select "input#project_status[name=?]", "project[status]"
    end
  end
end

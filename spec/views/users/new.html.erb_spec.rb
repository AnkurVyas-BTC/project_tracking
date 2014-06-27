require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :code => "MyString",
      :description => "MyString",
      :billing_type => "MyString",
      :github_url => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_code[name=?]", "user[code]"
      assert_select "input#user_description[name=?]", "user[description]"
      assert_select "input#user_billing_type[name=?]", "user[billing_type]"
      assert_select "input#user_github_url[name=?]", "user[github_url]"
      assert_select "input#user_status[name=?]", "user[status]"
    end
  end
end

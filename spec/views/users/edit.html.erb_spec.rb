require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :code => "MyString",
      :description => "MyString",
      :billing_type => "MyString",
      :github_url => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_code[name=?]", "user[code]"
      assert_select "input#user_description[name=?]", "user[description]"
      assert_select "input#user_billing_type[name=?]", "user[billing_type]"
      assert_select "input#user_github_url[name=?]", "user[github_url]"
      assert_select "input#user_status[name=?]", "user[status]"
    end
  end
end

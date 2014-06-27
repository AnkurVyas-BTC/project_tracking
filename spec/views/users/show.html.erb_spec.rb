require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :code => "Code",
      :description => "Description",
      :billing_type => "Billing Type",
      :github_url => "Github Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(/Description/)
    rendered.should match(/Billing Type/)
    rendered.should match(/Github Url/)
    rendered.should match(/Status/)
  end
end

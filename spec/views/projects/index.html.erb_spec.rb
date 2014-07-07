require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :code => "Code",
        :description => "Description",
        :billing_type => "Billing Type",
        :github_url => "Github Url",
        :status => "Status"
      ),
      stub_model(Project,
        :name => "Name",
        :code => "Code",
        :description => "Description",
        :billing_type => "Billing Type",
        :github_url => "Github Url",
        :status => "Status"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Type".to_s, :count => 2
    assert_select "tr>td", :text => "Github Url".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end

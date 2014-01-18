require 'spec_helper'

describe "users/show" do
  before(:each) do
    @users = assign(:users, stub_model(Users,
      :name => "Name",
      :profile => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end

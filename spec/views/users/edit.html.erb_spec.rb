require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @users = assign(:users, stub_model(Users,
      :name => "MyString",
      :profile => "MyText"
    ))
  end

  it "renders the edit users form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path(@users), "post" do
      assert_select "input#users_name[name=?]", "users[name]"
      assert_select "textarea#users_profile[name=?]", "users[profile]"
    end
  end
end

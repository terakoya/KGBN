require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:users, stub_model(Users,
      :name => "MyString",
      :profile => "MyText"
    ).as_new_record)
  end

  it "renders new users form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_index_path, "post" do
      assert_select "input#users_name[name=?]", "users[name]"
      assert_select "textarea#users_profile[name=?]", "users[profile]"
    end
  end
end

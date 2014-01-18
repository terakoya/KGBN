require 'spec_helper'

describe "favorites/new" do
  before(:each) do
    assign(:favorite, stub_model(Favorite,
      :user_id => 1,
      :target_id => 1,
      :target_type => "MyString"
    ).as_new_record)
  end

  it "renders new favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favorites_path, "post" do
      assert_select "input#favorite_user_id[name=?]", "favorite[user_id]"
      assert_select "input#favorite_target_id[name=?]", "favorite[target_id]"
      assert_select "input#favorite_target_type[name=?]", "favorite[target_type]"
    end
  end
end

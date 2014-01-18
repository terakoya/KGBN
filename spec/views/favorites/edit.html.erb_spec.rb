require 'spec_helper'

describe "favorites/edit" do
  before(:each) do
    @favorite = assign(:favorite, stub_model(Favorite,
      :user_id => 1,
      :target_id => 1,
      :target_type => "MyString"
    ))
  end

  it "renders the edit favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favorite_path(@favorite), "post" do
      assert_select "input#favorite_user_id[name=?]", "favorite[user_id]"
      assert_select "input#favorite_target_id[name=?]", "favorite[target_id]"
      assert_select "input#favorite_target_type[name=?]", "favorite[target_type]"
    end
  end
end

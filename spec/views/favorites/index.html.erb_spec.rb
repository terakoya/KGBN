require 'spec_helper'

describe "favorites/index" do
  before(:each) do
    assign(:favorites, [
      stub_model(Favorite,
        :user_id => 1,
        :target_id => 2,
        :target_type => "Target Type"
      ),
      stub_model(Favorite,
        :user_id => 1,
        :target_id => 2,
        :target_type => "Target Type"
      )
    ])
  end

  it "renders a list of favorites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Target Type".to_s, :count => 2
  end
end

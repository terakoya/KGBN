require 'spec_helper'

describe "favorites/show" do
  before(:each) do
    @favorite = assign(:favorite, stub_model(Favorite,
      :user_id => 1,
      :target_id => 2,
      :target_type => "Target Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Target Type/)
  end
end

require 'rails_helper'

RSpec.describe "states/index", :type => :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :abbreviation => "Abbreviation",
        :state => "State",
        :description => "MyText"
      ),
      State.create!(
        :abbreviation => "Abbreviation",
        :state => "State",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

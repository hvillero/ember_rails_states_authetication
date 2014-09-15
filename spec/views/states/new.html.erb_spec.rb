require 'rails_helper'

RSpec.describe "states/new", :type => :view do
  before(:each) do
    assign(:state, State.new(
      :abbreviation => "MyString",
      :state => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new state form" do
    render

    assert_select "form[action=?][method=?]", states_path, "post" do

      assert_select "input#state_abbreviation[name=?]", "state[abbreviation]"

      assert_select "input#state_state[name=?]", "state[state]"

      assert_select "textarea#state_description[name=?]", "state[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "states/edit", :type => :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :abbreviation => "MyString",
      :state => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(@state), "post" do

      assert_select "input#state_abbreviation[name=?]", "state[abbreviation]"

      assert_select "input#state_state[name=?]", "state[state]"

      assert_select "textarea#state_description[name=?]", "state[description]"
    end
  end
end

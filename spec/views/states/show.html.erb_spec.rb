require 'rails_helper'

RSpec.describe "states/show", :type => :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :abbreviation => "Abbreviation",
      :state => "State",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Abbreviation/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/MyText/)
  end
end

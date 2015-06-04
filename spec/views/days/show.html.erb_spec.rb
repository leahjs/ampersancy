require 'rails_helper'

RSpec.describe "days/show", type: :view do
  before(:each) do
    @day = assign(:day, Day.create!(
      :ampersand => "Ampersand",
      :weekday => "Weekday",
      :date => 1,
      :month => "Month",
      :year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ampersand/)
    expect(rendered).to match(/Weekday/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Month/)
    expect(rendered).to match(/2/)
  end
end

require 'rails_helper'

RSpec.describe "days/index", type: :view do
  before(:each) do
    assign(:days, [
      Day.create!(
        :ampersand => "Ampersand",
        :weekday => "Weekday",
        :date => 1,
        :month => "Month",
        :year => 2
      ),
      Day.create!(
        :ampersand => "Ampersand",
        :weekday => "Weekday",
        :date => 1,
        :month => "Month",
        :year => 2
      )
    ])
  end

  it "renders a list of days" do
    render
    assert_select "tr>td", :text => "Ampersand".to_s, :count => 2
    assert_select "tr>td", :text => "Weekday".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

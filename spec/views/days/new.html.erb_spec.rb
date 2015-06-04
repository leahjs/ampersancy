require 'rails_helper'

RSpec.describe "days/new", type: :view do
  before(:each) do
    assign(:day, Day.new(
      :ampersand => "MyString",
      :weekday => "MyString",
      :date => 1,
      :month => "MyString",
      :year => 1
    ))
  end

  it "renders new day form" do
    render

    assert_select "form[action=?][method=?]", days_path, "post" do

      assert_select "input#day_ampersand[name=?]", "day[ampersand]"

      assert_select "input#day_weekday[name=?]", "day[weekday]"

      assert_select "input#day_date[name=?]", "day[date]"

      assert_select "input#day_month[name=?]", "day[month]"

      assert_select "input#day_year[name=?]", "day[year]"
    end
  end
end

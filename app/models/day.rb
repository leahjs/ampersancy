class Day < ActiveRecord::Base

# add fonts and ampersands to database when I find all 365 fonts
  def self.load_fonts
    font_of_day = []
    File.open("app/assets/stylesheets/fonts365.txt", "r") do |f|
      f.each_line do |font_name|
        font_of_day << font_name
      end
    font_of_day
    end
  end

  def self.getting_dates
    now = Date.today 
    jan_1_1 = Date.new(2015,1,1)
    date_70 = Date.today - 70
    dayes = (date_70..now).to_a 
    sorted_dayes = dayes.sort {|x,y| y <=> x }
    date_font_hash = sorted_dayes.zip(Day.load_fonts)
  end
end


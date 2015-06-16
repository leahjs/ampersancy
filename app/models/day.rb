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

end


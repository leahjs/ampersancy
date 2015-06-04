json.array!(@days) do |day|
  json.extract! day, :id, :ampersand, :weekday, :date, :month, :year
  json.url day_url(day, format: :json)
end

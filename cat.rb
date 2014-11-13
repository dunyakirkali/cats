# Cat script
require "open-uri"

desired_number = 20
desired_number.times.each do |i|
  width = (3 + rand(6)) * 100
  height = (3 + rand(6)) * 100
  base_url = "http://placekitten.com/g/#{width}/#{height}"

  open(base_url) do |f|
    puts "downloading #{width}x#{height}"
    File.open("cat-#{i}.jpg","wb") do |file|
      file.puts f.read
    end
  end
end
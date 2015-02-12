# Cat script
require "open-uri"

desired_number = 20
cats = false

desired_number.times.each do |i|
  width = (3 + rand(6)) * 100
  height = (3 + rand(6)) * 100
  base_url = (cats) ? "http://placekitten.com/g/#{width}/#{height}" : "http://lorempixel.com/#{width}/#{height}/technics"

  open(base_url) do |f|
    puts "downloading #{width}x#{height}"
    File.open("#{i}.jpg","wb") do |file|
      file.puts f.read
    end
  end
end


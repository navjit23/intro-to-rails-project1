# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'json'
require 'rest-client'
require 'open-url'
require 'net/http'


url = URI("https://football98.p.rapidapi.com/competitions")
url_for_tables = URI("https://football98.p.rapidapi.com/premierleague/table")
url_for_fixtures = URI("https://football98.p.rapidapi.com/premierleague/fixtures")




http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'football98.p.rapidapi.com'


response = http.request(request)
x = response.read_body
league_names = x.split(",")
league_names.each do |league|
  League.create(name :league)
end
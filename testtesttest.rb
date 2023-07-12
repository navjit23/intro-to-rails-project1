

require 'net/http'
require 'uri'

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
  puts league
end
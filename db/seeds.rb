require 'uri'
require 'net/http'
require 'json'

LEAGUE_IDS = [39, 40]
TEAM_IDS = [11,2,4]

url = URI("https://api-football-v1.p.rapidapi.com/v3/leagues?id=39")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

league_name = data["response"][0]["league"]["name"]
League.create(league_name: league_name)



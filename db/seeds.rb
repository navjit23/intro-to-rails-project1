require 'uri'
require 'net/http'
require 'json'

LEAGUE_IDS = [39, 40]
TEAM_IDS = [11,2,4]

=begin
url = URI("https://api-football-v1.p.rapidapi.com/v3/leagues?id=39")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

league_id = data["response"][0]["league"]["id"]
league_name = data["response"][0]["league"]["name"]
League.create(id: league_id, league_name: league_name)
=end


#remember to take the team id for players

url = URI("https://api-football-v1.p.rapidapi.com/v3/teams?league=39&season=2022")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

#loop the 0 thing

teams = data["response"]
teams.each do |team_info|
  Table.create(id: team_info['team']['id'], name: team_info['team']['name'], founded: team_info['team']['founded'], league_id: 57, logo: team_info['team']['logo'] )
end


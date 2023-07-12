require 'uri'
require 'net/http'
require 'json'


url = URI("https://api-football-v1.p.rapidapi.com/v3/teams?league=39&season=2022")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

#loop the 0 thing
#loop the 0 thing
team_names = data["response"]
team_names.each do |teams|
  puts teams["team"]["name"]
  puts teams["team"]["id"]
end

# have 10 leagues
# url = URI("https://api-football-v1.p.rapidapi.com/v3/leagues?id=39")
# each league have 20 team
#url=URI("https://api-football-v1.p.rapidapi.com/v3/teams?league=39&season=2022")
# each league have 20 player
#url = URI("https://api-football-v1.p.rapidapi.com/v3/players?team=33&season=2022")




# FOR LEAGUE NAMES
=begin

rescue => exception

end
url = URI("https://api-football-v1.p.rapidapi.com/v3/leagues?id=39")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

league_names = data["response"][0]["league"]["name"]
puts league_names
=end


# FOR TEAM NAMES
#remember to take the team id for players
=begin
url = URI("https://api-football-v1.p.rapidapi.com/v3/teams?league=39&season=2022")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

#loop the 0 thing
team_names = data["response"][0]["team"]["name"]
puts team_names




url = URI("https://api-football-v1.p.rapidapi.com/v3/players?team=33&season=2022")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

#loop the 0 thing
team_names = data["response"][1]["player"]
puts team_names
=end
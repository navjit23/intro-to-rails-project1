require 'uri'
require 'net/http'
require 'json'

LEAGUE_IDS = [39, 78, 140]
TEAM_IDS = [33, 529,]


LEAGUE_IDS.each do |id|
  url = URI("https://api-football-v1.p.rapidapi.com/v3/leagues?id=#{id}")

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
end



=begin
#remember to take the team id for players

url_for_team = URI("https://api-football-v1.p.rapidapi.com/v3/teams?league=39&season=2022")

http1 = Net::HTTP.new(url_for_team.host, url_for_team.port)
http1.use_ssl = true

request1 = Net::HTTP::Get.new(url_for_team)
request1["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request1["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response1 = http1.request(request1)
data1 = JSON.parse(response1.read_body)

#loop the 0 thing

teams = data1["response"]
teams.each do |team_info|
  unless team_info['team'].nil? || team_info['team']['id'].nil?
    Table.create!(id: team_info['team']['id'], name: team_info['team']['name'], founded: team_info['team']['founded'], league_id: 39, logo: team_info['team']['logo'])
  else
    puts "error in team id"
  end
end





url_for_players = URI("https://api-football-v1.p.rapidapi.com/v3/players?team=33&season=2022")

http = Net::HTTP.new(url_for_players.host, url_for_players.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url_for_players)
request["X-RapidAPI-Key"] = 'd78181db48msh50182f7ef3451f8p1ff6efjsnf9e2245d8348'
request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

response = http.request(request)
data = JSON.parse(response.read_body)

#loop the 0 thing
player_data = data["response"]
player_data.each do |p_info|
  player = p_info['player']
  unless player.nil? || player['name'].nil? || player['id'].nil?
    Player.create!(name: player['name'], id: player['id'], age: player['age'], nationality: player['nationality'], photo: player['photo'], table_id: 33)
  else
    puts "Error in player data"
  end
end


=end
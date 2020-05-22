# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_name)
  hash = game_hash
  #Iterating through nested hash until finding the right player
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        score = player[:points] #updating score to equal that of desired player
      end
    end
  end
score
end

def shoe_size(player_name)
  hash = game_hash
  #Iterating throug nested hash to find the right player
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        size = player[:shoe] #updating shoe size to equal that of desired player
      end
    end
  end
size
end

def team_colors(team_name)
  hash = game_hash
  #Iterating through nested hash to find the right team
  for team in hash.keys
    if hash[team][:team_name] == team_name
      colors = hash[team][:colors] #updating color to equal that of the desired team
    end
  end
  colors
end

def team_names
  hash = game_hash
  names = []
  #Iterating through nested hash to get to both team names
  for team in hash.keys
    names.push hash[team][:team_name] #pushing team names onto an empty array to be returned
  end
  names
end

def player_numbers(team_name)
  hash = game_hash
  numbers = []
  #Iterating through nested hash to get to the numbers of the players of the desired team
  for team in hash.keys
    if hash[team][:team_name] == team_name
      for player in hash[team][:players]
        numbers.push(player[:number]) #pushing player numbers onto an empty array to be returned
      end
    end
  end 
  numbers
end

def player_stats(player_name)
  hash = game_hash
  #Iterating throug a nested array to get to the right player
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        stats = player #saving the stats of the desired player in a 'stats' variable to be returned
      end
    end
  end
  stats
end

def big_shoe_rebounds
  hash = game_hash
  max_shoe_size = 0
  #Iterating throug a nested array to get the shoe size of all players
  for team in hash.keys
    for player in hash[team][:players]
      if player[:shoe] > max_shoe_size #comparing the current player's shoe size wit the max shoe size and updating the current max if current player's shoe size is larger
        max_shoe_size = player[:shoe] 
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  hash = game_hash
  max_points = 0
  max_player = nil
  #Iterating through the nested hash to find the points scored by each player
  for team in hash.keys
      for player in hash[team][:players]
          if player[:points] > max_points #comparing the points of current player with max points, and updating max points if current player has more points
              max_points = player[:points]
              max_player = player[:player_name]
          end
      end
  end
  max_player
end

def winning_team
  hash = game_hash
  home_points = 0
  away_points = 0

  #Calculating home team points
  for player in hash[:home][:players]
      home_points += player[:points]
  end
  #Calculating away team points
  for player in hash[:away][:players]
      away_points += player[:points]
  end

  #Comparing points and finding winner
  if home_points > away_points
      winner = hash[:home][:team_name]
  else
      winner = hash[:away][:team_name]
  end
  winner
end

def player_with_longest_name
  hash = game_hash
  longest_length = 0

  #Iterating throug nested hash to find all player names
  for team in hash.keys
      for player in hash[team][:players]
          if player[:player_name].length > longest_length #comparing lengt of current player's name with max value and updating max value if current length is larger
              longest_length = player[:player_name].length
              longest_name = player[:player_name]
          end
      end
  end
  longest_name
end

def long_name_steals_a_ton?
  hash = game_hash
  longest_name = player_with_longest_name
  
  #Finding max number of steals and player with max number of steals overall
  max_steals = 0
  for team in hash.keys
      for player in hash[team][:players]
          if player[:steals] > max_steals
              max_steals = player[:steals]
              max_steals_player = player[:player_name]
          end
      end
  end
  
  #Checking if max_steals_player is player_with_longest_name
  if longest_name == max_steals_player
      return true
  else
    return false
  end
end
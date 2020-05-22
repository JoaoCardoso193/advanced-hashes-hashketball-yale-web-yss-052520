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
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        score = player[:points]
      end
    end
  end
score
end

def shoe_size(player_name)
  hash = game_hash
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        size = player[:shoe]
      end
    end
  end
size
end

def team_colors(team_name)
  hash = game_hash
  for team in hash.keys
    if hash[team][:team_name] == team_name
      colors = hash[team][:colors]
    end
  end
  colors
end

def team_names
  hash = game_hash
  names = []
  for team in hash.keys
    names.push hash[team][:team_name]
  end
  names
end

def player_numbers(team_name)
  hash = game_hash
  numbers = []
  for team in hash.keys
    if hash[team][:team_name] == team_name
      for player in hash[team][:players]
        numbers.push(player[:number])
      end
    end
  end 
  numbers
end

def player_stats(player_name)
  hash = game_hash
  for team in hash.keys
    for player in hash[team][:players]
      if player[:player_name] == player_name
        stats = player
      end
    end
  end
  stats
end

def big_shoe_rebounds
  hash = game_hash
  max_shoe_size = 0
  for team in hash.keys
    for player in hash[team][:players]
      if player[:shoe] > max_shoe_size
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
  for team in hash.keys
      for player in hash[team][:players]
          if player[:points] > max_points
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

  for team in hash.keys
      for player in hash[team][:players]
          if player[:player_name].length > longest_length
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
  
  #Finding max number of steals
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
  end
end
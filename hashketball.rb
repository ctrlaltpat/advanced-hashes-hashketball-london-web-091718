require "pry"

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
 
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end

# good_practices

def num_points_scored(player)
  points = 0
  game_hash.each do |location, team_data|
    team_data.each do |k,v|
      if k == :players && team_data[k].include?(player)
        points = team_data[k][player][:points]
      end
    end
  end
  puts points
  points
end

def shoe_size(player)
  size = 0
  game_hash.each do |location, team_data|
    team_data.each do |k,v|
      if k == :players && team_data[k].include?(player)
        size = team_data[k][player][:shoe]
      end
    end
  end
  puts size
  size
end

def team_colors(team)
  colors = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team 
      colors = team_data[:colors]
    end
  end
  puts colors
  colors
end

def team_names
  names = []
  game_hash.each do |location, team_data|
    names << team_data[:team_name]
  end
  puts names
  names
end

def player_numbers(team)
  jersey_numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |k,v|
      if k == :players && team_data[:team_name] == team
        v.each do |l,w|
          jersey_numbers << team_data[k][l][:number]
        end
      end
    end
  end
  puts jersey_numbers
  jersey_numbers
end

def player_stats(player)
  stats = {}
  game_hash.each do |location, team_data|
    team_data.each do |k,v|
      if k == :players && team_data[k].include?(player)
        stats = team_data[k][player]
      end
    end
  end
  stats
end

def all_player_names
  names = []
  game_hash.each do |location, team_data|
    team_data.each do |k,v|
      if k == :players
        names << team_data[k].keys
      end
    end
  end
  names
end

def big_shoe_rebounds
  largest_shoe_size = 0
  rebounds = 0
  
  all_player_names.each do |p|
    size = shoe_size(p)
    puts size
    if size > largest_shoe_size
      largest_shoe_size = size
      puts player_stats(p)
    end
  end
  rebounds
end





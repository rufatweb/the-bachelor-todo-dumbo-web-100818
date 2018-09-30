require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  first_name = nil
  data[season].each do |hash|
    if hash["status"] == "Winner"
      first_name = hash["name"].split(" ")[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  name_of_woman = nil
  data.each do |season, array|
    data[season].each do |hash|
      if hash["occupation"] == occupation
        name_of_woman = hash["name"]
      end
    end
  end
  name_of_woman
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num_of_contestant = 0

  data.each do |season, array|
    data[season].each do |hash|
      if hash["hometown"] == hometown
      num_of_contestant += 1
    end
  end
  end
  num_of_contestant
end

def get_occupation(data, hometown)
  data.each do |season, array|
    data[season].each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
  all_ages = []
   data[season].each do |hash|
      all_ages << hash["age"].to_f
    end
 (all_ages.inject {|sum,x| sum + x } / all_ages.length).round
end

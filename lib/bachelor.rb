def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    if person["status"].downcase == "winner"
      return person["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, persons|
    persons.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, persons|
    persons.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, persons|
    persons.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  total_people = 0
  data[season].each do |persons|
    total_age += persons["age"].to_i
    total_people += 1
  end
  (total_age/total_people.to_f).round(0)
end

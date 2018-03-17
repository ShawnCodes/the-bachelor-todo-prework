def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |stats|
    return stats['name'].split(' ')[0] if stats['status'] == 'Winner'
  end
end

def get_contestant_name(data, occupation)
  data.each do |_season, contestants|
    contestants.each do |key|
      return key['name'] if key['occupation'] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |_season, contestants|
    contestants.each do |key|
      count += 1 if key['hometown'] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |_season, contestants|
    contestants.each do |key|
      return key['occupation'] if key['hometown'] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  avg_age = 0
  count = 0
  data[season].each do |key|
    avg_age += key['age'].to_i
    count += 1
  end
  avg = avg_age / count.to_f
  avg.round
end

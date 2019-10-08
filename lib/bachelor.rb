require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here	
  data[season].each do |contestant_stats| #season is list of dicts
    if contestant_stats["status"] == "Winner"
      return contestant_stats["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, season_contest|
    season_contest.each do |contest_occupation|
      if contest_occupation["occupation"] == occupation
        return contest_occupation["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, season_contest|
    season_contest.each do |contest_hometown|
      if contest_hometown["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_contest|
    season_contest.each do |contest_hometown|
      if contest_hometown["hometown"] == hometown
         return contest_hometown["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  num_contest = 0
  sum_age_contest = 0
  data.each do|season_contest|
    season_contest.each do |contest_age|
      if contest_age["age"] < sum_age_contest
        sum_age_contest = sum_age_contest + "age" 
      binding.pry
      end
    end
  end
end


class Team
  
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(team_name,int_win,int_lose,int_draw)
    self.name = team_name
    self.win = int_win
    self.lose = int_lose
    self.draw = int_draw
  end
  
  def calc_win_rate
    return self.win.to_f / (self.win + self.lose)
  end
  
  def show_team_result(rate)
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は" + rate.to_s + "です。"
  end
  
end

=begin
team_names = ["Giants","Tigers","Dragons","BayStars","Carp","Swallows"]
team_wins = [67,60,60,56,52,41]
team_loses = [45,53,55,58,56,69]
team_draws = [8,7,5,6,12,10]
=end

giants_info = ["Giants",67,45,8] #チーム名、勝ち数、負け数、引き分け数
tigers_info = ["Tigers",60,53,7]
dragons_info = ["Dragons",60,55,5]
bayStars_info = ["BayStars",56,58,6]
carp_info = ["Carp",52,56,12]
swallows_info = ["Swallows",41,69,10]

=begin
teams.each do |team_name|
  aa = team.new(team_name)
  aa.show_team_result
end

g = Team.new(team_names[0],team_wins[0],team_loses[0],team_draws[0])
g.show_team_result(g.calc_win_rate)
=end

team_giants = Team.new(giants_info[0],giants_info[1],giants_info[2],giants_info[3])
team_tigers = Team.new(tigers_info[0],tigers_info[1],tigers_info[2],tigers_info[3])
team_dragons = Team.new(dragons_info[0],dragons_info[1],dragons_info[2],dragons_info[3])
team_bayStars = Team.new(bayStars_info[0],bayStars_info[1],bayStars_info[2],bayStars_info[3])
team_carp = Team.new(carp_info[0],carp_info[1],carp_info[2],carp_info[3])
team_swallows = Team.new(swallows_info[0],swallows_info[1],swallows_info[2],swallows_info[3])

team_giants.show_team_result(team_giants.calc_win_rate)
team_tigers.show_team_result(team_tigers.calc_win_rate)
team_dragons.show_team_result(team_dragons.calc_win_rate)
team_bayStars.show_team_result(team_bayStars.calc_win_rate)
team_carp.show_team_result(team_carp.calc_win_rate)
team_swallows.show_team_result(team_swallows.calc_win_rate)
class Game < ApplicationRecord
  has_many :tips
  belongs_to :competition

  def finish
    users = User.includes(:tips)

    users.each do |user|
      user.tips.each do |tip|
        if tip.tipHomeTeam == self.scoreHomeTeam && tip.tipAwayTeam == self.scoreAwayTeam
          if(user.ranking)
             user.ranking.update_attribute(:points, user.ranking.points + 1)
          else
            Ranking.create(points: 1, user: user)
          end
        end
      end
    end

    self.update_attribute(:finished, true)
  end
end


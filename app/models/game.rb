class Game < ApplicationRecord
  has_many :tips
  belongs_to :competition
end

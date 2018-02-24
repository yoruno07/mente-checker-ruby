class Keyword < ApplicationRecord
  belongs_to :game
  validates :word, presence: true
end

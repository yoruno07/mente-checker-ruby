class Game < ApplicationRecord
  has_many :keywords, dependent: :destroy
end

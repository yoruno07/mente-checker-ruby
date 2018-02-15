class Game < ApplicationRecord
  has_many :keywords, dependent: :destroy
  has_many :checkers, dependent: :destroy

  def getKeywordsToSearch
    keywords.pluck('word').join(' OR ')
  end
end

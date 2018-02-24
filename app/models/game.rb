class Game < ApplicationRecord
  has_many :keywords, dependent: :destroy
  has_many :checkers, dependent: :destroy
  validates :name, presence: true
  validates :account, presence: true

  def getKeywordsToSearch
    keywords.pluck('word').join(' OR ')
  end
end

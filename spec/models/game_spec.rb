require 'rails_helper'

RSpec.describe Game, type: :model do
  before { @azule = FactoryBot.create(:azule) }
  it "ゲーム名、アカウントがあれば有効な状態であること" do
    game = Game.new(
      name: "テストゲーム",
      account: "@test_game",
      )
    expect(game).to be_valid
  end

  it "ゲーム名がなければ無効な状態であること" do
    game = Game.new(
      name: nil
      )
    game.valid?
    expect(game.errors[:name]).to include("can't be blank")
  end

  it "アカウントがなければ無効な状態であること" do
    game = Game.new(
      account: nil
      )
    game.valid?
    expect(game.errors[:account]).to include("can't be blank")
  end

  describe  "#getKeywordsToSearch" do
    it "対応するkeywordをORで連結して取得する" do
      search_word = @azule.getKeywordsToSearch
      expect(search_word).to eq "メンテナンスのお知らせ OR 緊急メンテナンス"
    end
  end
end

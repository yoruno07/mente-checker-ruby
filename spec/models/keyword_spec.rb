require 'rails_helper'

RSpec.describe Keyword, type: :model do
  before { @azule = FactoryBot.create(:azule) }
  it "キーワードがあれば有効な状態であること" do
    keyword = Keyword.new(
      word: "test",
      game_id: @azule.id,
      )
    expect(keyword).to be_valid
  end

  it "キーワードがなければ無効な状態であること" do
    keyword = Keyword.new(
      word: nil,
      )
    keyword.valid?
    expect(keyword.errors[:word]).to include("can't be blank")
  end

  describe  "モデル作成・削除テスト" do
    it 'gameを削除すると、gameに紐づくkeyword削除がされること' do
      expect{ @azule.destroy }.to change{ Keyword.count }.by(-2)
    end
  end
end

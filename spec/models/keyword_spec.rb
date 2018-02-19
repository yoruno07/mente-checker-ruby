require 'rails_helper'

RSpec.describe Keyword, type: :model do

  describe  "モデル作成・削除テスト" do
    before { @azule = FactoryBot.create(:azule) }
    it "keywordが正常に作成できているかどうか" do
      expect(@azule).to be_valid
    end

    it 'gameを削除すると、gameに紐づくkeyword削除がされること' do
      expect{ @azule.destroy }.to change{ Keyword.count }.by(-2)
    end

  end
end

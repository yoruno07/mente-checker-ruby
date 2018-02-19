require 'rails_helper'

RSpec.describe Game, type: :model do
  before { @azule = FactoryBot.create(:azule) }
  describe  "#getKeywordsToSearch" do
    it "対応するkeywordをORで連結して取得する" do
      search_word = @azule.getKeywordsToSearch
      expect(search_word).to eq "メンテナンスのお知らせ OR 緊急メンテナンス"
    end
  end
end

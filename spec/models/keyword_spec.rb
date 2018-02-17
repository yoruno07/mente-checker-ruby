require 'rails_helper'

RSpec.describe Keyword, type: :model do
  it "キーワードデータが正常に作成できるかどうか" do
    keyword = FactoryBot.create(:azule)
    expect(keyword).to be_valid
  end
end

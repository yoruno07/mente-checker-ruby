require 'rails_helper'

RSpec.describe Keyword, type: :model do
  let(:azule) { FactoryBot.create(:azule) }
  it "キーワードデータが正常に作成できるかどうか" do
    expect(azule).to be_valid
  end
end

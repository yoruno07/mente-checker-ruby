FactoryBot.define do
  factory :maintenance, :class => Keyword do |keyword|
    keyword.word "メンテナンスのお知らせ"
    association :game, factory: :azule
  end
end

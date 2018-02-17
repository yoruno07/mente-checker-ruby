FactoryBot.define do
  factory :azule, :class => Game do |game|
    game.name 'アズールレーン'
    game.account 'azurlane_staff'
    game.eventname 'azure_info'
    game.default_flg true
  end
end

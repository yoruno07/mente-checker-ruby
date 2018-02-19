FactoryBot.define do
  factory :azule, :class => Game do |game|
    game.name 'アズールレーン'
    game.account 'azurlane_staff'
    game.eventname 'azure_info'
    game.default_flg true

    after(:create) do |azule|
      FactoryBot.create(:maintenance, game: azule)
      FactoryBot.create(:emergency, game: azule)
    end
  end
end

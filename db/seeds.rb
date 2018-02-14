# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(name: 'アズールレーン', account: 'azurlane_staff', eventname: 'azure_info', default_flg: true)
Game.create(name: 'Fate / Grand Order', account: 'fgoproject', eventname: 'fgo_info', default_flg: true)

azure = Game.first
fgo = Game.second

azure.keywords.create(word: 'メンテナンスのお知らせ')
azure.keywords.create(word: '緊急メンテナンス')
azure.keywords.create(word: 'アップデート')

fgo.keywords.create(word: 'メンテナンス')
fgo.keywords.create(word: 'アップデート')
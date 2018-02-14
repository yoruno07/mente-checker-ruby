class Batch::Scraping
  require 'twitter'

  # rails runner Batch::Scraping.getAllSearch
  def self.getAllSearch
    client = createClient
    games = Game.all

    games.each do |game|
      getSearch(client, game)
    end
  end

  private

    def self.getSearch(client, game)

      search_word = game.getKeywordsToSearch + " from:" + game.account
      result = client.search(search_word)

      # テスト用に出力
      result.take(2).each_with_index do |tw, i|
        puts "#{i}: @#{tw.user.screen_name}: #{tw.full_text}"
      end
    end

    def self.createClient
      Twitter::REST::Client.new do |config|
        config.access_token = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
        config.consumer_key = ENV["CONSUMER_KEY"]
        config.consumer_secret = ENV["CONSUMER_SECRET"]
      end
    end

end
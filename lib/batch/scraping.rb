class Batch::Scraping
  require 'twitter'

  # rails runner Batch::Scraping.getAllSearch
  def self.getAllSearch
    client = createClient

    Game.all.each do |game|
      getSearch(client, game)
    end
  end

  private

    def self.getSearch(client, game)
      search_word = game.getKeywordsToSearch + " from:" + game.account
      result = client.search(search_word, {result_type: "recent", count: 10})

      result.each_with_index do |tw, i|
        checker = game.checkers.find_or_initialize_by(tweet_id: tw.id)
        checker.content = tw.full_text
        checker.tweeted_at = tw.created_at #INSERT時はUTCのままで扱い、表示する際にJSTにする
        checker.save
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
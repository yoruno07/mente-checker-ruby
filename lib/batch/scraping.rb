class Batch::Scraping
  require 'twitter'

  # rails runner Batch::Scraping.getsearch
  def self.getsearch
    client = Twitter::REST::Client.new do |config|
      config.access_token = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
      config.consumer_key = ENV["CONSUMER_KEY"]
      config.consumer_secret = ENV["CONSUMER_SECRET"]
    end

    result = client.search("メンテナンス from:azurlane_staff")

    result.take(10).each_with_index do |tw, i|
      puts "#{i}: @#{tw.user.screen_name}: #{tw.full_text}"
    end
  end

end
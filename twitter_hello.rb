# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'
require 'dotenv'
Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TOKEN_KEY"]
  config.access_token_secret = ENV["TOKEN_SECRET_KEY"]
end

# ligne qui permet de tweeter
client.update('Mon premier tweet en ruby !!!! \n Hello World')
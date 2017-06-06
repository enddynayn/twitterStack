class Settings
  extend Mixlib::Config

  config_context :mongoid do
    default(:uri, ENV['MONGO_URI'])
  end

  config_context :twitter do
    default(:consumer_key, ENV['TWITTER_CONSUMER_KEY'])
    default(:consumer_secret, ENV['TWITTER_CONSUMER_SECRET'])
    default(:access_token, ENV['TWITTER_ACCESS_TOKEN'])
    default(:access_token_secret, ENV['TWITTER_TOKEN_SECRET'])
  end
end

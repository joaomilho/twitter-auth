Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV.fetch("TWITTER_APP_ID"), ENV.fetch("TWITTER_APP_SECRET")
end

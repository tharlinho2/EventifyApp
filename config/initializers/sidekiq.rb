Sidekiq.configure_server do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Mailgun.configure do |config|
  config.api_key = ENV["MAILGUN_API_KEY"]
end

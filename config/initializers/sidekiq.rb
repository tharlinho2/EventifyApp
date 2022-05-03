Sidekiq.configure_server do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Mailgun.configure do |config|
  config.api_key = "6c306dc281217674d4277d19164b74f8-fe066263-4181c85f"
end

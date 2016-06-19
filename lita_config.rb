Lita.configure do |config|
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV["SLACK_TOKEN"]
  # config.adapters.slack.link_names = true
  # config.adapters.slack.parse = "full"
  # config.adapters.slack.unfurl_links = true
  # config.adapters.slack.proxy = ENV["SLACK_LITA_PROXY"]
  config.robot.admins = ENV["SLACK_LITA_ADMINS"].to_s.split(",")

  # image search
  config.handlers.google_images.google_cse_id = ENV["GOOGLE_CSE_ID"]
  config.handlers.google_images.google_cse_key = ENV["GOOGLE_KEY"]

  config.redis[:url] = ENV["REDIS_URL"]
  config.robot.log_level = ENV["LOG_LEVEL"]
end

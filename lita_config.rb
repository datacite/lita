Lita.configure do |config|
  config.redis[:url] = ENV["REDIS_URL"]

  config.robot.log_level = ENV["LOG_LEVEL"]
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV["SLACK_TOKEN"]
  # config.adapters.slack.link_names = true
  # config.adapters.slack.parse = "full"
  # config.adapters.slack.unfurl_links = false
  # config.adapters.slack.proxy = ENV["SLACK_LITA_PROXY"]
  config.robot.admins = ENV["SLACK_LITA_ADMINS"].to_s.split(",")

  # image search
  config.handlers.google_images.google_cse_id = ENV["GOOGLE_CSE_ID"]
  config.handlers.google_images.google_cse_key = ENV["GOOGLE_KEY"]

  # librato
  config.handlers.libratoo.email = ENV["LIBRATO_EMAIL"]
  config.handlers.libratoo.api_key = ENV["LIBRATO_API_KEY"]

  # pivotal tracker
  config.handlers.pivotal_tracker.token = ENV["PIVOTAL_TOKEN"]

  # statuspage
  config.handlers.statuspage.api_key = ENV["STATUSPAGE_API_KEY"]
  config.handlers.statuspage.page_id = ENV["STATUSPAGE_PAGE_ID"]

  # timezone
  config.handlers.timezone.default_zone = ENV["TIMEZONE_DEFAULT"]

  # docker hub
  config.handlers.docker_hub.room = ENV["DOCKER_HUB_ROOM"]

  # urban dictionary
  config.handlers.urban_dictionary.max_response_size = 5
end

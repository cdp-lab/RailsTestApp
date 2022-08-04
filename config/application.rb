require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BugsnifferTestApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
  end
end

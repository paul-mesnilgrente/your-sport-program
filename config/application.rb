# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# This could be done by using Figaro gem.
# We decided to use this instead of Figaro for consistency
begin
  ENV.update(
    YAML.load_file('config/application.yml')[Rails.env].except(*ENV.keys)
  )
rescue StandardError
  {}
end

module YourSportProgram
  # Application configuration
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified
    # here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module R5244EnumIssueTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # as per https://dev.to/diegocasmo/comment/17h6c?utm_source=notify_mailer&utm_medium=email&utm_campaign=new_reply_email
    # config.active_record.schema_format = :sql
    # when I do this setting it seems to create NO db/schema.rb file whatsoever


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

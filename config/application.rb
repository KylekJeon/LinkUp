require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LinkUp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.paperclip_defaults = {
      storage: :s3,
      s3_protocol: 'http',
      url: 's3/home?region=us-west-2&bucket=linkupapplication&prefix=',
      path: 'images/:class/:id.:style.:extension',
      s3_host_name: 'kylekjeon',
      s3_credentials: {
        bucket: ENV['AWS_BUCKET'], #these values safely stored in application.yml thanks to figaro!
        access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
      }
    }
  end
end

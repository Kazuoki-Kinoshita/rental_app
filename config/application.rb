require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module DevExamRails6
  class Application < Rails::Application
    config.load_defaults 6.0
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
  end
end

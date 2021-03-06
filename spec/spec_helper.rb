require 'rails'
require 'active_support/core_ext/numeric'
require 'action_controller/railtie'
require 'sprockets/railtie'

require 'gauges/rails'

Rails.application = Class.new(Rails::Application) do
  config.active_support.deprecation = :stderr
  config.secret_token = SecureRandom.uuid
  config.logger = Logger.new('/dev/null')

  config.assets.enabled = true
  config.assets.cache_store = :memory_store, { size: 1.megabyte }

  initialize!
  routes.clear!
end

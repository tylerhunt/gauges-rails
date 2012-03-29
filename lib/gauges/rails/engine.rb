require 'gauges/rails/version'

module Gauges
  module Rails
    class Engine < ::Rails::Engine
      config.gauges = ActiveSupport::OrderedOptions.new
      config.gauges.site_id = nil

      initializer 'gauges-rails.update_precompiled_assets' do |app|
        app.config.assets.precompile << 'gauges.js'
      end
    end
  end
end

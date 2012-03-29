require 'gauges/rails/version'

module Gauges
  module Rails
    class Engine < ::Rails::Engine
      config.gauges = ActiveSupport::OrderedOptions.new
      config.gauges.site_id = nil
    end
  end
end

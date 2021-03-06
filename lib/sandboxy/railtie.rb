# frozen_string_literal: true

require 'rails/railtie'
require 'active_record'

module Sandboxy
  class Railtie < Rails::Railtie
    initializer 'sandboxy.active_record' do
      ActiveSupport.on_load :active_record do
        include Sandboxy::Sandboxed
      end
    end

    initializer 'sandboxy.middleware' do |app|
      app.middleware.use(Sandboxy::Middleware) unless Sandboxy.configuration&.retain
    end

    config.after_initialize do
      puts "Sandboxy: Using #{Sandboxy.configuration.default} environment"
    end
  end
end

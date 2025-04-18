require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "https://becaffeinated.vercel.app", "http://localhost:5173"
        resource "*",
                 headers: :any,
                 methods: [ :get, :post, :put, :patch, :delete, :options, :head ]
      end
    end
  end
end

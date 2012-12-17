# Requires
require "rails/engine"
require "team_page"

module TeamPage

  class Engine < Rails::Engine

    initializer "team_page.load_app_instance_data" do |app|
      TeamPage.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "team_page.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end

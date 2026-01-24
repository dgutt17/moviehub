require "roda"
require "json"

# Database
require_relative "config/database"

# Models
Dir[File.join(__dir__, "app/models/*.rb")].each { |f| require f }

class App < Roda
  plugin :json
  plugin :common_logger
  plugin :all_verbs

  route do |r|
    r.root do
      { status: "running" }
    end

    r.run self.class
  end
end

# Routes
Dir[File.join(__dir__, "app/routes/*.rb")].each { |f| require f }

App.extend(Routes::Ping)
Routes::Ping.registered(App)

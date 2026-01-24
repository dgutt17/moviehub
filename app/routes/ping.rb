# This file defines the /ping route
# It will be required by app.rb

module Routes
  module Ping
    def self.registered(app)
      app.route do |r|
        r.on "ping" do
          r.get do
            { status: "ok", message: "pong" }
          end
        end
      end
    end
  end
end


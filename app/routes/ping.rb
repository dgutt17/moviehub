# This file defines the /ping route
# It will be required by app.rb

module Routes
  module Ping
    def self.registered(app)
      app.route do |r|
        r.on "ping" do
          r.get do
            # Test 1: Ping the connection
db_connection = ActiveRecord::Base.connection.active?
            puts "ActiveRecord connection: #{db_connection}"  # true/false

            # Test 2: Simple query
            query_result = ActiveRecord::Base.connection.execute('SELECT 1').values
            puts "Query Result: #{query_result}"
            { status: "ok", message: "pong", db_connection: db_connection, query_result: query_result}
          end
        end
      end
    end
  end
end


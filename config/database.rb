require "active_record"
require "logger"

db_url = ENV.fetch("DATABASE_URL")

ActiveRecord::Base.establish_connection(db_url)

ActiveRecord::Base.logger = Logger.new($stdout)

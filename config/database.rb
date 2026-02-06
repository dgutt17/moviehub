require "active_record"
require "logger"

db_url = ENV.fetch("DATABASE_URL")

ActiveRecord::Base.establish_connection(db_url)

logger = Logger.new($stdout)
logger.level = Logger::DEBUG

ActiveRecord::Base.logger = logger

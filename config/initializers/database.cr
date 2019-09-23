require "jennifer"
require "jennifer_sqlite3_adapter"

Jennifer::Config.read("#{`pwd`.strip}/config/database.yml", ENV["APP_ENV"]? || "development")
Jennifer::Config.from_uri(ENV["DATABASE_URI"]) if ENV.has_key?("DATABASE_URI")

Jennifer::Config.configure do |conf|
  conf.model_files_path = "app/models"
  conf.pool_size = 3
  conf.logger.level = Logger::DEBUG
end

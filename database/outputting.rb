require "sqlite3"

db = SQLite3::Database.open "piepiper.db"

puts db.execute "SELECT * FROM numbers"

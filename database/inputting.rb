require "sqlite3"

db = SQLite3::Database.new "piepiper.db"

db.execute "INSERT INTO menu VALUES (?, ?, ?, ?, ?)", [1, "hi", 9.99, "Medium", "Pi"]

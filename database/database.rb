require "sqlite3"



db = SQLite3::Database.open "piepiper.db"


rows = db.execute <<-SQL
  CREATE TABLE menu (
    menu_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    price FLOAT,
    size VARCHAR(50),
    type VARCHAR(50)
  );

  CREATE TABLE users(
    user_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50),
    access_level INT,
    dietary_requirements_id INT
  );

  CREATE TABLE dietary_requirements(
    dietary_requirements_id INT NOT NULL,
    allergy VARCHAR(50),
    PRIMARY KEY(dietary_requirements_id, allergy),
    FOREIGN KEY dietary_requirements_id REFERENCES users(dietary_requirements_id)
  );

SQL



db.close

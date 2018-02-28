CREATE TABLE menu_choices(
  menu_id INTEGER NOT NULL PRIMARY KEY,
  name TEXT,
  price FLOAT,
  size TEXT,
  type TEXT,
);

CREATE TABLE users(
  user_id INTEGER NOT NULL PRIMARY KEY,
  name TEXT,
  address TEXT,
  email TEXT,
  password TEXT,
  access_level INTEGER,
  dietary_requirements_id INTEGER
);

CREATE TABLE dietary_requirements(
  dietary_requirements_id INTEGER NOT NULL,
  allergy TEXT,
  PRIMARY KEY(dietary_requirements_id, allergy),
  FOREIGN KEY dietary_requirements_id REFERENCES users(dietary_requirements_id)
);

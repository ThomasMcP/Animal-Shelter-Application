DROP TABLE animals;
DROP TABLE owners;


CREATE TABLE owners(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  pets VARCHAR(255)
);

CREATE TABLE animals(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT4,
  type VARCHAR(255),
  breed VARCHAR(255),
  adoption_status VARCHAR(255),
  day_admitted DATE,
  owner_id INT8 REFERENCES owners(id) ON DELETE CASCADE
);

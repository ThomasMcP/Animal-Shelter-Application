DROP TABLE owners;
DROP TABLE animals;


CREATE TABLE animals(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT4,
  adoption_status VARCHAR(255),
  day_admitted DATE
);

CREATE TABLE owners(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  pet_id INT8 UNIQUE REFERENCES animals(id) ON DELETE CASCADE
);

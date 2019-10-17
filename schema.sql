-- IN
-- DROP TABLE food;
CREATE TABLE food (
  fdc_id Integer,
  data_type VARCHAR,
  description VARCHAR,
  food_category_id INTEGER,
  publication_date VARCHAR
);
-- SELECT * FROM food;

-- IN
-- DROP TABLE food_component;
CREATE TABLE food_component (
  	id Integer PRIMARY KEY,
  	fdc_id Integer,
  	name VARCHAR,
  	pct_weight FLOAT,
  	is_refuse VARCHAR,
  	gram_weight FLOAT,
  	data_points INTEGER
);
-- SELECT * FROM food_component;

-- IN
-- DROP TABLE food_nutrient_conversion_factor;
CREATE TABLE food_nutrient_conversion_factor (
  id FLOAT PRIMARY KEY,
  fdc_id Integer
);
-- SELECT * FROM food_nutrient_conversion_factor;

-- IN
-- DROP TABLE measure_unit;
CREATE TABLE measure_unit (
  id Integer PRIMARY KEY,
  name VARCHAR
);
-- SELECT * FROM measure_unit;

-- IN
-- DROP TABLE nutrient;
CREATE TABLE nutrient (
  id Integer,
  name VARCHAR,
  unit_name VARCHAR,
  nutrient_nbr FLOAT,
  rank Integer
);
-- SELECT * FROM nutrient;

-- IN
-- DROP TABLE food_portion;
CREATE TABLE food_portion (
  id Integer,
  fdc_id Integer,
  seq_num VARCHAR,
  amount FLOAT,
  measure_unit_id INTEGER,
  portion_description VARCHAR,
  modifier VARCHAR,
  gram_weight FLOAT
);
-- SELECT * FROM food_portion;

-- IN
-- DROP TABLE food_calorie_conversion_factor;
CREATE TABLE food_calorie_conversion_factor (
  food_nutrient_conversion_factor_id FLOAT,
  protein_value FLOAT,
  fat_value FLOAT,
  carbohydrate_value FLOAT
);
-- SELECT * FROM food_calorie_conversion_factor;

-- IN
-- DROP TABLE food_protein_conversion_factor;
CREATE TABLE food_protein_conversion_factor (
  food_nutrient_conversion_factor_id FLOAT,
  value FLOAT
);
-- SELECT * FROM food_protein_conversion_factor;

-- NOT IN
DROP TABLE branded_food;
CREATE TABLE branded_food (
  fdc_id Integer,
  brand_owner VARCHAR,
  gtin_upc VARCHAR,
  ingredients VARCHAR,
  serving_size FLOAT,
  serving_size_unit VARCHAR,
  household_serving_fulltext VARCHAR,
  branded_food_category VARCHAR
);
SELECT * FROM branded_food;

-- IN
-- DROP TABLE food_nutrient;
CREATE TABLE food_nutrient (
  id Integer,
  fdc_id Integer,
  nutrient_id Integer,
  amount FLOAT,
  data_points Integer,
  derivation_id Integer
);
-- SELECT * FROM food_nutrient;

-- IN
-- DROP TABLE nutrient_incoming_name;
CREATE TABLE nutrient_incoming_name (
  id Integer PRIMARY KEY,
  name VARCHAR,
  nutrient_id INTEGER
);
-- SELECT * FROM nutrient_incoming_name;

-- IN
-- DROP TABLE food_nutrient_derivation;
CREATE TABLE food_nutrient_derivation (
  id Integer,
  code VARCHAR,
  description VARCHAR,
  source_id Integer
);
-- SELECT * FROM food_nutrient_derivation;

ALTER TABLE food_nutrient
	ADD PRIMARY KEY (id);
	
ALTER TABLE food_nutrient_conversion_factor
   ADD FOREIGN KEY (fdc_id) REFERENCES food (fdc_id);
   
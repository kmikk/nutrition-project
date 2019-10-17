SELECT * FROM branded_food;
SELECT * FROM food;
SELECT * FROM food_calorie_conversion_factor;
SELECT * FROM food_component;
SELECT * FROM food_nutrient;
SELECT * FROM food_nutrient_conversion_factor;
SELECT * FROM food_nutrient_derivation;
SELECT * FROM food_portion;
SELECT * FROM food_protein_conversion_factor;
SELECT * FROM measure_unit;
SELECT * FROM nutrient;
SELECT * FROM nutrient_incoming_name;

SELECT food_calorie_conversion_factor.protein_value, food_calorie_conversion_factor.fat_value, food_calorie_conversion_factor.carbohydrate_value, food_calorie_conversion_factor.food_nutrient_conversion_factor_id, food_nutrient_conversion_factor.fdc_id
	FROM food_calorie_conversion_factor
	INNER JOIN food_nutrient_conversion_factor ON
	food_calorie_conversion_factor.food_nutrient_conversion_factor_id = food_nutrient_conversion_factor.id;
	
SELECT fdc_id, description FROM food;
SELECT * FROM athletes_details
WHERE 1

SELECT first_name, last_name FROM athletes_details 
WHERE position = 'Quarterback'; /* we are decphiering columns and rows */

SELECT * FROM athletes_details, performance_data 
WHERE athletes_details.athlete_id=performance_data.performance_id; /* detail table and make it more accurate by using "." */

SELECT * FROM athletes_details AS ad, performance_data AS pd 
WHERE ad.athlete_id=pd.performance_id; /* shortcut with AS */

SELECT ad.position, ad.body_type, ad.training_focus, pd.exercise FROM athletes_details AS ad, performance_data AS pd 
WHERE ad.athlete_id=pd.performance_id;
/* retrive data better */

UPDATE athletes_details SET first_name="Marv" 
WHERE first_name="Marvin" /* how to update table */

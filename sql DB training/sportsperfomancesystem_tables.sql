CREATE TABLE Athletes_Details 
(
    athlete_id INT AUTO_INCREMENT, /* (INT = Whole Number, Primary KEY = Unique id for each athlete, AUTO_INCREMENT = Auto increases for each new entry) */
    first_name VARCHAR(15), /* VARCHAR = 15 is how many characters it can not exceed */
    last_name VARCHAR(15),
    date_of_birth DATE, /* Stores date values like YYYY-MM-DD */
    sport VARCHAR(100), /* Sport athlete plays */
    position VARCHAR(16), /* Position athlete plays */
    training_focus VARCHAR(30), /* Focus area for the athlete such as agility, power, or endurance */
    body_type VARCHAR(100), /* Body classification such as ectomorph, mesomorph, and endomorph */
    mental_performance_score DECIMAL, /* Measures cognitive performance */
    nutrition_plan TEXT, /* Large text field for detailed dietary plans */
    PRIMARY KEY (athlete_id) /* Removed the extra comma here */
);

CREATE TABLE Performance_Data 
(
    performance_id INT AUTO_INCREMENT, 
    athlete_id INT, /* Foreign key links record to the athlete_id in the Athletes table */
    date DATE, 
    training_type VARCHAR(20), /* Strength, speed */
    exercise VARCHAR(70), /* Drill, movement */ 
    biomechanics_efficiency DECIMAL, /* Rating of form efficiency with coach or AI */
    heart_rate_variability DECIMAL, /* HRV for recovery */
    reaction_time DECIMAL, /* Cognitive */
    sleep_quality_score DECIMAL, /* Sleep data for recovery */
    fatigue_index DECIMAL, /* Rating training strain */
    PRIMARY KEY (performance_id),
    FOREIGN KEY (athlete_id) REFERENCES Athletes_Details(athlete_id) /* ust reference athlete_details */
)
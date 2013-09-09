-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, age_65_above_year_2005 FROM "town_health_records" ORDER BY "town_health_records".age_65_above_year_2005 DESC LIMIT 3

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM "town_health_records" ORDER BY "town_health_records".age_0_9_year_2005 DESC LIMIT 3

-- What 5 towns have the lowest per capita income?
SELECT geography FROM "town_health_records" ORDER BY "town_health_records".per_capita_income_year_2000 ASC LIMIT 5

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, percent_teen_births_2005_2008 FROM "town_health_records" WHERE geography <> "Boston" AND geography <> "Beckett" AND geography <> "Beverly" ORDER BY "town_health_records".percent_teen_births_2005_2008 DESC LIMIT 1


-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality_rate__deaths_per_1000_live_births__2005_2008 FROM "town_health_records" WHERE geography <> "Boston" ORDER BY "town_health_records".infant_mortality_rate__deaths_per_1000_live_births__2005_2008 DESC LIMIT 1
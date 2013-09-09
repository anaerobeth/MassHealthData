# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select(:geography, :age_65_above_year_2005).order(:age_65_above_year_2005).last(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select(:geography).order(:age_0_9_year_2005).last(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.select(:geography).order(:per_capita_income_year_2000).first(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select(:geography, :percent_teen_births_2005_2008).where.not(geography: "Boston").where.not(geography: "Becket").where.not(geography: "Beverly").order(:percent_teen_births_2005_2008).last

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select(:geography, :infant_mortality_rate__deaths_per_1000_live_births__2005_2008).order(:infant_mortality_rate__deaths_per_1000_live_births__2005_2008).last
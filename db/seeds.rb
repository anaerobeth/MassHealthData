# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'

all_records = {}

CSV.foreach('db/data/mass_chip_data.csv', headers: true) do |row|
  all_records[row[0]] = {
    :geography => row['Geography'],
    :total_pop_year_2005 => row['total pop, year 2005'].to_i,
    :age_0_9_year_2005 => row['age 0-19, year 2005'].to_i,
    :age_65_above_year_2005 => row['age 65+, year 2005'].to_i,
    :per_capita_income_year_2000 => row['Per Capita Income, year 2000'].to_i,
    :persons_living_below_200_percent_poverty_2000 => row['Persons Living Below 200% Poverty, year 2000'].to_i,
    :percent_all_persons_living_below_200_percent_poverty_level_2000 => row['% all Persons Living Below 200% Poverty Level, year 2000'].to_f,
    :percent_adequacy_prenatal_care__kotelchuck_ => row['% adequacy prenatal care (kotelchuck)'].to_f,
    :percent_c_section_deliveries_2005_2008 => row['% C-section deliveries, 2005-2008'].to_f,
    :number_of_infant_deaths_2005_2008 => row['Number of infant deaths, 2005-2008'].to_f,
    :infant_mortality_rate__deaths_per_1000_live_births__2005_2008 => row['Infant mortality rate (deaths per 1000 live births), 2005-2008'].to_f,
    :percent_low_birthweight_2005_2008 => row['% low birthweight 2005-2008'].to_f.to_f,
    :percent_multiple_births_2005_2008 => row['% multiple births, 2005-2008'].to_f,
    :percent_publicly_financed_prenatal_care_2005_2008 => row['% publicly financed prenatal care, 2005-2008'].to_f,
    :percent_teen_births_2005_2008 => row['% teen births, 2005-2008'].to_f
  }
end

all_records.each do | key, values |
  record = TownHealthRecord.where({
    geography: key
  }).first

  if record.nil?
    record = TownHealthRecord.new(values)
  else
    record.attributes = values
  end

  record.save!
end

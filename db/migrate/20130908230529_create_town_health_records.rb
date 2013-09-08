class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop_year_2005
      t.integer :age_0_9_year_2005
      t.integer :age_65_above_year_2005
      t.float :per_capita_income_year_2000
      t.integer :persons_living_below_200_percent_poverty_2000
      t.float :percent_all_persons_living_below_200_percent_poverty_level_2000
      t.float :percent_adequacy_prenatal_care__kotelchuck_
      t.float :percent_c_section_deliveries_2005_2008
      t.integer :number_of_infant_deaths_2005_2008
      t.integer :infant_mortality_rate__deaths_per_1000_live_births__2005_2008
      t.float :percent_low_birthweight_2005_2008
      t.float :percent_multiple_births_2005_2008
      t.float :percent_publicly_financed_prenatal_care_2005_2008
      t.float :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end

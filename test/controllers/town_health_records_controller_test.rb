require 'test_helper'

class TownHealthRecordsControllerTest < ActionController::TestCase
  setup do
    @town_health_record = town_health_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:town_health_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create town_health_record" do
    assert_difference('TownHealthRecord.count') do
      post :create, town_health_record: { age_0_9_year_2005: @town_health_record.age_0_9_year_2005, age_65_above_year_2005: @town_health_record.age_65_above_year_2005, geography: @town_health_record.geography, infant_mortality_rate__deaths_per_1000_live_births__2005_2008: @town_health_record.infant_mortality_rate__deaths_per_1000_live_births__2005_2008, number_of_infant_deaths_2005_2008: @town_health_record.number_of_infant_deaths_2005_2008, per_capita_income_year_2000: @town_health_record.per_capita_income_year_2000, percent_adequacy_prenatal_care__kotelchuck_: @town_health_record.percent_adequacy_prenatal_care__kotelchuck_, percent_all_persons_living_below_200_percent_poverty_level_year_2000: @town_health_record.percent_all_persons_living_below_200_percent_poverty_level_year_2000, percent_c_section_deliveries_2005_2008: @town_health_record.percent_c_section_deliveries_2005_2008, percent_low_birthweight_2005_2008: @town_health_record.percent_low_birthweight_2005_2008, percent_multiple_births_2005_2008: @town_health_record.percent_multiple_births_2005_2008, percent_publicly_financed_prenatal_care_2005_2008: @town_health_record.percent_publicly_financed_prenatal_care_2005_2008, percent_teen_births_2005_2008: @town_health_record.percent_teen_births_2005_2008, persons_living_below_200_percent_poverty_year_2000: @town_health_record.persons_living_below_200_percent_poverty_year_2000, total_pop_year_2005: @town_health_record.total_pop_year_2005 }
    end

    assert_redirected_to town_health_record_path(assigns(:town_health_record))
  end

  test "should show town_health_record" do
    get :show, id: @town_health_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @town_health_record
    assert_response :success
  end

  test "should update town_health_record" do
    patch :update, id: @town_health_record, town_health_record: { age_0_9_year_2005: @town_health_record.age_0_9_year_2005, age_65_above_year_2005: @town_health_record.age_65_above_year_2005, geography: @town_health_record.geography, infant_mortality_rate__deaths_per_1000_live_births__2005_2008: @town_health_record.infant_mortality_rate__deaths_per_1000_live_births__2005_2008, number_of_infant_deaths_2005_2008: @town_health_record.number_of_infant_deaths_2005_2008, per_capita_income_year_2000: @town_health_record.per_capita_income_year_2000, percent_adequacy_prenatal_care__kotelchuck_: @town_health_record.percent_adequacy_prenatal_care__kotelchuck_, percent_all_persons_living_below_200_percent_poverty_level_year_2000: @town_health_record.percent_all_persons_living_below_200_percent_poverty_level_year_2000, percent_c_section_deliveries_2005_2008: @town_health_record.percent_c_section_deliveries_2005_2008, percent_low_birthweight_2005_2008: @town_health_record.percent_low_birthweight_2005_2008, percent_multiple_births_2005_2008: @town_health_record.percent_multiple_births_2005_2008, percent_publicly_financed_prenatal_care_2005_2008: @town_health_record.percent_publicly_financed_prenatal_care_2005_2008, percent_teen_births_2005_2008: @town_health_record.percent_teen_births_2005_2008, persons_living_below_200_percent_poverty_year_2000: @town_health_record.persons_living_below_200_percent_poverty_year_2000, total_pop_year_2005: @town_health_record.total_pop_year_2005 }
    assert_redirected_to town_health_record_path(assigns(:town_health_record))
  end

  test "should destroy town_health_record" do
    assert_difference('TownHealthRecord.count', -1) do
      delete :destroy, id: @town_health_record
    end

    assert_redirected_to town_health_records_path
  end
end

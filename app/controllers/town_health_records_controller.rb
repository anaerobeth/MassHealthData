class TownHealthRecordsController < ApplicationController
  before_action :set_town_health_record, only: [:show, :edit, :update, :destroy]

  # GET /town_health_records
  # GET /town_health_records.json
  def index
    @town_health_records = TownHealthRecord.all
  end

  # GET /town_health_records/1
  # GET /town_health_records/1.json
  def show
  end

  # GET /town_health_records/new
  def new
    @town_health_record = TownHealthRecord.new
  end

  # GET /town_health_records/1/edit
  def edit
  end

  # POST /town_health_records
  # POST /town_health_records.json
  def create
    @town_health_record = TownHealthRecord.new(town_health_record_params)

    respond_to do |format|
      if @town_health_record.save
        format.html { redirect_to @town_health_record, notice: 'Town health record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @town_health_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @town_health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /town_health_records/1
  # PATCH/PUT /town_health_records/1.json
  def update
    respond_to do |format|
      if @town_health_record.update(town_health_record_params)
        format.html { redirect_to @town_health_record, notice: 'Town health record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @town_health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /town_health_records/1
  # DELETE /town_health_records/1.json
  def destroy
    @town_health_record.destroy
    respond_to do |format|
      format.html { redirect_to town_health_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_health_record
      @town_health_record = TownHealthRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def town_health_record_params
      params.require(:town_health_record).permit(:geography, :total_pop_year_2005, :age_0_9_year_2005, :age_65_above_year_2005, :per_capita_income_year_2000, :persons_living_below_200_percent_poverty_year_2000, :percent_all_persons_living_below_200_percent_poverty_level_year_2000, :percent_adequacy_prenatal_care__kotelchuck_, :percent_c_section_deliveries_2005_2008, :number_of_infant_deaths_2005_2008, :infant_mortality_rate__deaths_per_1000_live_births__2005_2008, :percent_low_birthweight_2005_2008, :percent_multiple_births_2005_2008, :percent_publicly_financed_prenatal_care_2005_2008, :percent_teen_births_2005_2008)
    end
end

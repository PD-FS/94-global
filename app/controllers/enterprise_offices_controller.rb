class EnterpriseOfficesController < ApplicationController
  before_action :set_enterprise_office, only: [:show, :edit, :update, :destroy]

  # GET /enterprise_offices
  # GET /enterprise_offices.json
  def index
    @enterprise_offices = EnterpriseOffice.all
  end

  # GET /enterprise_offices/1
  # GET /enterprise_offices/1.json
  def show
  end

  # GET /enterprise_offices/new
  def new
    @enterprise_office = EnterpriseOffice.new
  end

  # GET /enterprise_offices/1/edit
  def edit
  end

  # POST /enterprise_offices
  # POST /enterprise_offices.json
  def create
    @enterprise_office = EnterpriseOffice.new(enterprise_office_params)

    respond_to do |format|
      if @enterprise_office.save
        format.html { redirect_to @enterprise_office, notice: 'Enterprise office was successfully created.' }
        format.json { render :show, status: :created, location: @enterprise_office }
      else
        format.html { render :new }
        format.json { render json: @enterprise_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enterprise_offices/1
  # PATCH/PUT /enterprise_offices/1.json
  def update
    respond_to do |format|
      if @enterprise_office.update(enterprise_office_params)
        format.html { redirect_to @enterprise_office, notice: 'Enterprise office was successfully updated.' }
        format.json { render :show, status: :ok, location: @enterprise_office }
      else
        format.html { render :edit }
        format.json { render json: @enterprise_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprise_offices/1
  # DELETE /enterprise_offices/1.json
  def destroy
    @enterprise_office.destroy
    respond_to do |format|
      format.html { redirect_to enterprise_offices_url, notice: 'Enterprise office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise_office
      @enterprise_office = EnterpriseOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enterprise_office_params
      params.require(:enterprise_office).permit(:name, :address, :phone, :latitude, :longitude, :enterprise_id)
    end
end

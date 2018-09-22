class ReportClassesController < ApplicationController
  before_action :set_report_class, only: [:show, :edit, :update, :destroy]

  # GET /report_classes
  # GET /report_classes.json
  def index
    @report_classes = ReportClass.all
  end

  # GET /report_classes/1
  # GET /report_classes/1.json
  def show
  end

  # GET /report_classes/new
  def new
    @report_class = ReportClass.new
  end

  # GET /report_classes/1/edit
  def edit
  end

  # POST /report_classes
  # POST /report_classes.json
  def create
    @report_class = ReportClass.new(report_class_params)

    respond_to do |format|
      if @report_class.save
        format.html { redirect_to @report_class, notice: 'Report class was successfully created.' }
        format.json { render :show, status: :created, location: @report_class }
      else
        format.html { render :new }
        format.json { render json: @report_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_classes/1
  # PATCH/PUT /report_classes/1.json
  def update
    respond_to do |format|
      if @report_class.update(report_class_params)
        format.html { redirect_to @report_class, notice: 'Report class was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_class }
      else
        format.html { render :edit }
        format.json { render json: @report_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_classes/1
  # DELETE /report_classes/1.json
  def destroy
    @report_class.destroy
    respond_to do |format|
      format.html { redirect_to report_classes_url, notice: 'Report class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_class
      @report_class = ReportClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_class_params
      params.require(:report_class).permit(:name, :icon)
    end
end

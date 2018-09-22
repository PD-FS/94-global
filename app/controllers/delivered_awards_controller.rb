class DeliveredAwardsController < ApplicationController
  before_action :set_delivered_award, only: [:show, :edit, :update, :destroy]

  # GET /delivered_awards
  # GET /delivered_awards.json
  def index
    @delivered_awards = DeliveredAward.all
  end

  # GET /delivered_awards/1
  # GET /delivered_awards/1.json
  def show
  end

  # GET /delivered_awards/new
  def new
    @delivered_award = DeliveredAward.new
  end

  # GET /delivered_awards/1/edit
  def edit
  end

  # POST /delivered_awards
  # POST /delivered_awards.json
  def create
    @delivered_award = DeliveredAward.new(delivered_award_params)

    respond_to do |format|
      if @delivered_award.save
        format.html { redirect_to @delivered_award, notice: 'Delivered award was successfully created.' }
        format.json { render :show, status: :created, location: @delivered_award }
      else
        format.html { render :new }
        format.json { render json: @delivered_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivered_awards/1
  # PATCH/PUT /delivered_awards/1.json
  def update
    respond_to do |format|
      if @delivered_award.update(delivered_award_params)
        format.html { redirect_to @delivered_award, notice: 'Delivered award was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivered_award }
      else
        format.html { render :edit }
        format.json { render json: @delivered_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivered_awards/1
  # DELETE /delivered_awards/1.json
  def destroy
    @delivered_award.destroy
    respond_to do |format|
      format.html { redirect_to delivered_awards_url, notice: 'Delivered award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivered_award
      @delivered_award = DeliveredAward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivered_award_params
      params.require(:delivered_award).permit(:user_id, :award_id)
    end
end

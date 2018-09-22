class CivicoinsController < ApplicationController
  before_action :set_civicoin, only: [:show, :edit, :update, :destroy]

  # GET /civicoins
  # GET /civicoins.json
  def index
    @civicoins = Civicoin.all
  end

  # GET /civicoins/1
  # GET /civicoins/1.json
  def show
  end

  # GET /civicoins/new
  def new
    @civicoin = Civicoin.new
  end

  # GET /civicoins/1/edit
  def edit
  end

  # POST /civicoins
  # POST /civicoins.json
  def create
    @civicoin = Civicoin.new(civicoin_params)

    respond_to do |format|
      if @civicoin.save
        format.html { redirect_to @civicoin, notice: 'Civicoin was successfully created.' }
        format.json { render :show, status: :created, location: @civicoin }
      else
        format.html { render :new }
        format.json { render json: @civicoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civicoins/1
  # PATCH/PUT /civicoins/1.json
  def update
    respond_to do |format|
      if @civicoin.update(civicoin_params)
        format.html { redirect_to @civicoin, notice: 'Civicoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @civicoin }
      else
        format.html { render :edit }
        format.json { render json: @civicoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civicoins/1
  # DELETE /civicoins/1.json
  def destroy
    @civicoin.destroy
    respond_to do |format|
      format.html { redirect_to civicoins_url, notice: 'Civicoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civicoin
      @civicoin = Civicoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civicoin_params
      params.require(:civicoin).permit(:user_id, :app, :transaction, :amount, :description)
    end
end

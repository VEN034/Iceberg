class ExportlcsController < ApplicationController
  before_action :set_exportlc, only: [:show, :edit, :update, :destroy]

  # GET /exportlcs
  # GET /exportlcs.json
  def index
    @exportlcs = Exportlc.all
  end

  # GET /exportlcs/1
  # GET /exportlcs/1.json
  def show
  end

  # GET /exportlcs/new
  def new
    @exportlc = Exportlc.new
  end

  # GET /exportlcs/1/edit
  def edit
  end

  # POST /exportlcs
  # POST /exportlcs.json
  def create
    @exportlc = Exportlc.new(exportlc_params)

    respond_to do |format|
      if @exportlc.save
        format.html { redirect_to @exportlc, notice: 'Exportlc was successfully created.' }
        format.json { render :show, status: :created, location: @exportlc }
      else
        format.html { render :new }
        format.json { render json: @exportlc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exportlcs/1
  # PATCH/PUT /exportlcs/1.json
  def update
    respond_to do |format|
      if @exportlc.update(exportlc_params)
        format.html { redirect_to @exportlc, notice: 'Exportlc was successfully updated.' }
        format.json { render :show, status: :ok, location: @exportlc }
      else
        format.html { render :edit }
        format.json { render json: @exportlc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exportlcs/1
  # DELETE /exportlcs/1.json
  def destroy
    @exportlc.destroy
    respond_to do |format|
      format.html { redirect_to exportlcs_url, notice: 'Exportlc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exportlc
      @exportlc = Exportlc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exportlc_params
      params.require(:exportlc).permit(:lc_number, :issue_date, :expiry_date, :currency, :amount, :applicant, :beneficiary, :issuing_bank, :tenor, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :latest_shipment_date, :partial_shipment, :transhipment, :goods_description, :documents_required, :additional_conditions, :drawee, :available_with, :available_by, :remarks)
    end
end

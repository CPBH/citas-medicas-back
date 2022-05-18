class Api::V1::CitaController < ApplicationController
  before_action :set_citum, only: %i[ show update destroy ]

  # GET /cita
  # GET /cita.json
  def index
    @cita = Citum.all
  end

  # GET /cita/1
  # GET /cita/1.json
  def show
  end

  # POST /cita
  # POST /cita.json
  def create
    @citum = Citum.new(citum_params)

    if @citum.save
      render :show, status: :created, location: @citum
    else
      render json: @citum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cita/1
  # PATCH/PUT /cita/1.json
  def update
    if @citum.update(citum_params)
      render :show, status: :ok, location: @citum
    else
      render json: @citum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cita/1
  # DELETE /cita/1.json
  def destroy
    @citum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citum
      @citum = Citum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citum_params
      params.require(:citum).permit(:usuario_id, :fecha, :tipo, :estado)
    end
end

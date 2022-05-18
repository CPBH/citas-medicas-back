class Api::V1::MedicosController < ApplicationController
  before_action :set_api_v1_medico, only: %i[ show update destroy ]

  # GET /api/v1/medicos
  # GET /api/v1/medicos.json
  def index
    @api_v1_medicos = Api::V1::Medico.all
  end

  # GET /api/v1/medicos/1
  # GET /api/v1/medicos/1.json
  def show
  end

  # POST /api/v1/medicos
  # POST /api/v1/medicos.json
  def create
    @api_v1_medico = Api::V1::Medico.new(api_v1_medico_params)

    if @api_v1_medico.save
      render :show, status: :created, location: @api_v1_medico
    else
      render json: @api_v1_medico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/medicos/1
  # PATCH/PUT /api/v1/medicos/1.json
  def update
    if @api_v1_medico.update(api_v1_medico_params)
      render :show, status: :ok, location: @api_v1_medico
    else
      render json: @api_v1_medico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/medicos/1
  # DELETE /api/v1/medicos/1.json
  def destroy
    @api_v1_medico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_medico
      @api_v1_medico = Api::V1::Medico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_medico_params
      params.require(:api_v1_medico).permit(:usuario_id, :titulo)
    end
end

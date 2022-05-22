class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[ show update destroy ]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consultum.all
    @historia = Historia.find_by_usuario_id(@consulta.usuario_id)
    @historia.enfermedades=@historia.enfermedades + @consulta.decripcion_paciente
    @historia.enfermedades=@historia.medicamentos + @consulta.receta.descripcion
    @historia.enfermedades=@historia.cirugias + @consulta.orden.descripcion
  end

  # GET /consulta/1
  # GET /consulta/1.json
  def show
  end

  # POST /consulta
  # POST /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)
    receta.descripcion

    if @consultum.save
      render :show, status: :created, location: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    if @consultum.update(consultum_params)
      render :show, status: :ok, location: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.json
  def destroy
    @consultum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultum_params
      params.require(:consultum).permit(usuario_id:,:orden_id, :receta:id, :decripcion_paciente)
    end
end

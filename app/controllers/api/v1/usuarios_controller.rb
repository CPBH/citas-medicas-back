class Api::V1::UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[ show update destroy ]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)
    @historia=Historium.new("","","","","")

    if @usuario.save
      render :show, status: :created
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def usuario_params
    params.require(:usuario).permit(:tipo, :tipoDocumento, :numeroDocumento, :nombre, :apellido, :email, :contrasena, :fechaNacimiento, :eps)
  end
end

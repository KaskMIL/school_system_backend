class Api::V1::AlumnosController < ApplicationController
  def index
    @alumnos = Alumno.all
    render json: @alumnos
  end

  def show
    @alumno = Alumno.find(params[:id])
    render json: @alumno
  end

  def create
    @alumno = Alumno.new(alumno_params)
    if @alumno.save
      render json: { message: 'Alumno creado con exito!', alumno: @alumno, status: 200 }
    else
      render json: { error: 'No se pudo crear el alumno, revise los parametros!' }
    end
  end

  def destroy
    @alumno = Alumno.find(params[:id])
    if @alumno.destroy
      render json: { message: 'El alumno ha sido eliminado de la base de datos con éxito!' }
    else
      render json: { message: 'El alumno no ha podido ser eliminado de la base de datos.' }
    end
  end

  private

  def alumno_params
    params.require(:alumno).permit(:nombre, :apellido, :family_id)
  end
end

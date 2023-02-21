class Api::V1::CursosController < ApplicationController
  def index
    @cursos = Curso.all

    render json: @cursos
  end

  def show
    @inscriptions = Inscription.all.where(curso_id: params[:id])
    @alumnos = []

    @inscriptions.each { |inscription| @alumnos.push(inscription.alumno) }

    render json: @alumnos
  end

  def create
    @curso = Curso.new(curso_params)

    if @curso.save
      render json: { msg: 'Curso creado con exito!', curso: @curso }
    else
      render json: { error: 'No se ha podido crear el curso, revise los parametros!' }
    end
  end

  def destroy
    @curso = Curso.find(params[:id])
    if @curso.destroy
      render json: { msg: 'El curso se ha eliminado con exito!' }
    else
      render json: { error: 'El curso no se ha eliminado de la base de datos.' }
    end
  end

  private

  def curso_params
    params.require(:curso).permit(:año, :seccion, :nivel, :cantidad)
  end
end

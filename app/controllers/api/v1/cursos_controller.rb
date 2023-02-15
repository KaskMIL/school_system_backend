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
end

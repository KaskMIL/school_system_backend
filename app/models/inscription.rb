class Inscription < ApplicationRecord
  belongs_to :curso, foreign_key: 'curso_id'
  belongs_to :alumno, foreign_key: 'alumno_id'

  after_save :update_counter
  after_destroy :update_counter

  private

  def update_counter
    curso.update(cantidad: curso.inscriptions.count)
  end
end

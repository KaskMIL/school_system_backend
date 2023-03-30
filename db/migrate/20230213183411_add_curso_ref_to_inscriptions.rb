class AddCursoRefToInscriptions < ActiveRecord::Migration[7.0]
  def change
    add_reference :inscriptions, :curso, null: false, foreign_key: { to_table: 'cursos' }
    add_reference :inscriptions, :alumno, null: false, foreign_key: { to_table: 'alumnos' }
  end
end

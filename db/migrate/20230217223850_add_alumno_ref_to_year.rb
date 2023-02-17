class AddAlumnoRefToYear < ActiveRecord::Migration[7.0]
  def change
    add_reference :years, :alumno, null: false, foreign_key: { to_table: 'alumnos' }
  end
end

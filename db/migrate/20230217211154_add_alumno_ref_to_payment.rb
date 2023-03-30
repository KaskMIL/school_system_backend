class AddAlumnoRefToPayment < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :alumno, null: false, foreign_key: { to_table: 'alumnos'}
    add_reference :payments, :concept, null: false, foreign_key: { to_table: 'concepts'}
  end
end

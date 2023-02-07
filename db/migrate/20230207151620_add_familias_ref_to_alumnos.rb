class AddFamiliasRefToAlumnos < ActiveRecord::Migration[7.0]
  def change
    add_reference :alumnos, :familias, null: false, foreign_key: true
  end
end

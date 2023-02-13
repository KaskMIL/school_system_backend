class AddFamilyRefToAlumnos < ActiveRecord::Migration[7.0]
  def change
    add_reference :alumnos, :family, null: false, foreign_key: { to_table: 'families' }
  end
end

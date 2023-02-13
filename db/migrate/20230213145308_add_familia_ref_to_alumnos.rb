class AddFamiliaRefToAlumnos < ActiveRecord::Migration[7.0]
  def change
    add_reference :alumnos, :familia, null: false, foreign_key: true
  end
end

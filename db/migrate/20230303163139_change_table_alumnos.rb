class ChangeTableAlumnos < ActiveRecord::Migration[7.0]
  def change
    change_table :alumnos do |t|
      t.integer :dni
      t.date :fecha_de_nacimiento
    end
  end
end

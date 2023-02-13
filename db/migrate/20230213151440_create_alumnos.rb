class CreateAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end

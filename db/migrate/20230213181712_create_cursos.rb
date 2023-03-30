class CreateCursos < ActiveRecord::Migration[7.0]
  def change
    create_table :cursos do |t|
      t.string :año
      t.string :seccion
      t.string :nivel
      t.integer :cantidad, :default => 0

      t.timestamps
    end
  end
end

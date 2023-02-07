class CreateFamilias < ActiveRecord::Migration[7.0]
  def change
    create_table :familias do |t|
      t.string :apellido

      t.timestamps
    end
  end
end

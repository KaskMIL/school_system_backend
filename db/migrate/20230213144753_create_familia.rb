class CreateFamilia < ActiveRecord::Migration[7.0]
  def change
    create_table :familia do |t|
      t.string :apellido

      t.timestamps
    end
  end
end

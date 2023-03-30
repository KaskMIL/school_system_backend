class ChangeTableFamilies < ActiveRecord::Migration[7.0]
  def change
    change_table :families do |t|
      t.string :direccion
      t.string :nombre_responsable_1
      t.string :nombre_responsable_2
      t.string :email
      t.integer :telefono
      t.string :ocupacion
    end
  end
end

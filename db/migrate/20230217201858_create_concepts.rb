class CreateConcepts < ActiveRecord::Migration[7.0]
  def change
    create_table :concepts do |t|
      t.string :nombre
      t.integer :precio
      t.boolean :saldado, :default => false

      t.timestamps
    end
  end
end

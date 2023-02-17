class AddYearRefToConcept < ActiveRecord::Migration[7.0]
  def change
    add_reference :concepts, :year, null: false, foreign_key: { to_table: 'years' }
  end
end

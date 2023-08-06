class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :field_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :string
      t.string :last_name
      t.datetime :date_of_birth
      t.string :status
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end

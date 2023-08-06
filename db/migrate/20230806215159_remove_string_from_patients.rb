class RemoveStringFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :string, :string
  end
end

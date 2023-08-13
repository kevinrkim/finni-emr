class AddContentToFields < ActiveRecord::Migration[7.0]
  def change
    add_column :fields, :content, :string
  end
end

class EditBandTable < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :description, :text, null: false
    add_index :bands, :description
  end
end

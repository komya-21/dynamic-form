class AddColumnToDataEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :data_entries, :properties, :text
  end
end

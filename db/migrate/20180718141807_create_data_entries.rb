class CreateDataEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :data_entries do |t|

      t.timestamps
    end
  end
end

class AddRefToDataEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :data_entries, :employee, foreign_key: true
  end
end

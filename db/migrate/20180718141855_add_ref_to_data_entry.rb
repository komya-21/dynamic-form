class AddRefToDataEntry < ActiveRecord::Migration[5.1]
  def change
    add_reference :data_entries, :form, foreign_key: true
  end
end

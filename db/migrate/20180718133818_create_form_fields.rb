class CreateFormFields < ActiveRecord::Migration[5.1]
  def change
    create_table :form_fields do |t|
      t.string :field_name

      t.timestamps
    end
  end
end

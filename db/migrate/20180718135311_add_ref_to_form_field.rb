class AddRefToFormField < ActiveRecord::Migration[5.1]
  def change
    add_reference :form_fields, :form, foreign_key: true
  end
end

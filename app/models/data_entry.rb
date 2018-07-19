class DataEntry < ApplicationRecord
	#attr_accessor :form_id, :properties
  belongs_to :form
  serialize :properties, Hash
  validate :validate_properties


  def validate_properties
    form.form_fields.each do |field|
      if  properties[field.field_name].blank?
        errors.add field.field_name, "must not be blank"
      end
    end
  end
end



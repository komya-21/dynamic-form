class Form < ApplicationRecord
	#attr_accessor :name, :form_fields_attributes
	has_many :form_fields
  accepts_nested_attributes_for :form_fields,allow_destroy: true
  has_many :data_entries
   
end

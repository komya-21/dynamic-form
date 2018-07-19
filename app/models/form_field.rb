class FormField < ApplicationRecord
	belongs_to :form , inverse_of: :form_fields
end

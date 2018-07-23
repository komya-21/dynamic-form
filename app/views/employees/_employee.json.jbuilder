json.extract! employee, :id, :name, :email, :address, :contact, :employee_no, :created_at, :updated_at
json.url employee_url(employee, format: :json)

class Employee < ApplicationRecord


after_create :create_employee_user

def create_employee_user
	User.create(email: self.email , password: self.employee_no ,employee_id: self.id, role: "Employee")
	end
end

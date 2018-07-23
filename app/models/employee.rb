class Employee < ApplicationRecord


after_create :create_employee_user


def emp_no
    date = Date.today.strftime('%Y%m%d')
    self.employee_no = date.to_s + '1' if Employee.first.nil?
    self.employee_no = date.to_s + \
                          Employee.last.id.next.to_s unless Employee.first.nil?
  end

def create_employee_user
	User.create(email: self.email , password: self.employee_no ,employee_id: self.id, role: "Employee")
	end
end

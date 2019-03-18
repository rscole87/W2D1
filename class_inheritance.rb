class Employee
    attr_reader :salary, :boss
    
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_employee
    end

    def bonus(multiplier)
        salary * multiplier
    end

    def inspect
        @name
    end


private
    def add_employee
        if !boss.nil?
            boss.employees << self
        end
    end

end

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        employee_salary_total * multiplier
    end

    def employee_salary_total
        salary_total = 0
        employees.each do |employee|
            if employee.is_a?(Manager)
                salary_total += employee.employee_salary_total + employee.salary
            else
                salary_total += employee.salary
            end
        end
        salary_total
    end

    def inspect
        p @name
        p @salary
        p @employees
    end
end
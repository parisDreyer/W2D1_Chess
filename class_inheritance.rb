class Employee
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager
  extend Employee
  
  def initialize(employees = [])
    @employees = employees
  end
  
  def bonus(multiplier)
    accumulator = 0
    @employees.each do |emp|
      accumulator += emp.salary
    end
    accumulator * multiplier
  end
end
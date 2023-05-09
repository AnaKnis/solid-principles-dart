class Payroll {
  List<dynamic> employees = [];

  void addEmployee(dynamic employee) {
    employees.add(employee);
  }

  double calculatePayroll() {
    double totalSalary = 0;
    for (dynamic employee in employees) {
      totalSalary += employee.calculateSalary();
    }
    return totalSalary;
  }
}

abstract class Employee {
  String name;
  int age;
  String job;

  Employee(this.name, this.age, this.job);

  double calculateSalary();
}

class FullTime extends Employee {
  double salary;

  FullTime(String name, int age, String job, this.salary)
      : super(name, age, job);

  @override
  double calculateSalary() {
    return salary;
  }
}

class Intern extends Employee {
  double allowance;

  Intern(String name, int age, String job, this.allowance)
      : super(name, age, job);

  @override
  double calculateSalary() {
    return allowance;
  }
}

//add new type without changing the Payroll class
class PartTime extends Employee {
  double hourlyWage;
  int hoursWorked;

  PartTime(String name, int age, String job, this.hourlyWage, this.hoursWorked)
      : super(name, age, job);

  @override
  double calculateSalary() {
    return hourlyWage * hoursWorked;
  }
}

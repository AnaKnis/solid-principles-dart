class Payroll {
  List<dynamic> employees = [];

  void addEmployee(dynamic employee) {
    employees.add(employee);
  }

  double calculatePayroll() {
    double totalSalary = 0;
    for (dynamic employee in employees) {
      if (employee is FullTime) {
        totalSalary += employee.salary;
      } else if (employee is Intern) {
        totalSalary += employee.allowance;
      }
    }
    return totalSalary;
  }
}

class FullTime {
  String name;
  int age;
  String job;
  double salary;

  FullTime(this.name, this.age, this.job, this.salary);
}

class Intern {
  String name;
  int age;
  String job;
  double allowance;

  Intern(this.name, this.age, this.job, this.allowance);
}

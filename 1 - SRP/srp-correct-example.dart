class Employee {
  late String name;
  late int age;
  late String job;
  late double salary;

  Employee(this.name, this.age, this.job, this.salary);

  void displayEmployee() {
    //display the employee information
  }
}

class EmployeeDatabase {
  void registerEmployee(Employee employee) {
    //register the employee
  }

  void increaseEmployeeSalary(Employee employee, double increaseAmount) {
    //increase the employee salary
  }

  void deleteEmployee(Employee employee) {
    //delete the employee information
  }

  void updateEmployeeData(
      Employee employee, String name, int age, String jobTitle, double salary) {
    //update the employee data
  }
}

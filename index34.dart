abstract class Employee {
  String name;

  Employee(this.name);

  double calculateSalary();
}

class Developer extends Employee {
  Developer(String name) : super(name);

  @override
  double calculateSalary() {
    return 50000;
  }
}

class Designer extends Employee {
  Designer(String name) : super(name);

  @override
  double calculateSalary() {
    return 40000;
  }
}

class Manager extends Employee {
  Manager(String name) : super(name);

  @override
  double calculateSalary() {
    return 60000;
  }
}

void main() {
  List<Employee> employees = [
    Developer("Ali"),
    Designer("Vali"),
    Manager("Sasha"),
  ];

  double totalSalary = 0;

  for (Employee employee in employees) {
    print("${employee.name}: ${employee.calculateSalary()} сом");

    totalSalary = totalSalary + employee.calculateSalary();
  }

  print("Общая сумма зарплат: $totalSalary сом");
}
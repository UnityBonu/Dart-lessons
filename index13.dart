class Employee {
    String name;
    double _salary;
    Employee(this.name, this._salary);

    double get balance => _salary;

    void upSalary(double percent) {
        if (percent > 0) {
            _salary += _salary * percent / 100;
        } else {
            print("Пишите корректное значение");
            return;
        }
    }

    void info() {
        print('$name Зарплата $_salary сом');
    }
}


class Developer extends Employee {
  String language;

  Developer(super.name, super.salary, this.language);

  void writeCode() {
    print("$name пишет код на $language");
  }

  @override
  void info() {
    super.info();
    print('Яп: $language');
  }
}

class Manager extends Employee {
  int teamSize;

  Manager(super.name, super._salary, this.teamSize);

  void manageTeam() {
    print("$name управляет командой из $teamSize человек");
  }

  @override
  void info() {
    super.info();
    print('Размер команды: $teamSize');
  }
}

void main() {
    Developer dev = Developer('Rayana', 115000, 'JavaScript');
    Manager mana = Manager('Shodiyana', 75000, 5);
    dev.info();
    dev.writeCode();
    dev.upSalary(13);
    dev.info();
    mana.upSalary(9);
    mana.info(); 
}
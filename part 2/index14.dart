class Person {
    String name;
    Person(this.name);

    void ind() {
        print('Hello $name');
    }
}

class Employee extends Person {
    double salary;
    Employee(super.name, this.salary);

    void work() {
        print('working $name $salary');
    }
}

class Developer extends Employee {
    String language;
    Developer(super.name, super.salary, this.language);

    void write() {
        print('$name code code $language');
    }
}

void main() {
    Developer d = Developer('ras', 100000, 'py');
    d.ind();
    d.work();
    d.write();
}
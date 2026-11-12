
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void info() {
    print('Имя: $name, Возраст: $age');
  }
}

class Student extends Person {
  String group;

  Student(String name, int age, this.group) : super(name, age);

  @override
  void info() {
    super.info();
    print('Группа: $group');
  }
}

class Teacher extends Person {
  String subject;

  Teacher(super.name, super.age, this.subject);

  @override
  void info() {
    super.info();
    print('Преподаёт дисциплину: $subject');
  }
}

void main() {
  Student stud = Student('Aliya', 17, 'PCS-1-24');
  Teacher teach = Teacher('Urmat', 20, 'HTML');

  stud.info();
  print('----------');
  teach.info();
}

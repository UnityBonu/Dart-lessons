class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void info() {
    print('Имя: $name, Возраст: $age');
  }

}
void main() {
    Person per = Person('Abai', 20);
    per.info(); 
}

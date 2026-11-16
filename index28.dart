// Новая тема: полиморфизм
class Animal {
  void sound() {
    print('Какой то звук');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('гав-гав собака');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('мяу-мяу кошка');
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat()];
  for (Animal ani in animals) {
    ani.sound();
  }
}
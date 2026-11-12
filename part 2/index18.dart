// Задание Nº1. Игровые персонажи (Миксины)
// Создайте миксины:
// - Attack - метод attack(), который выводит сообщение об атаке.
// - Heal - метод heal(), который выводит сообщение о лечении.
// - Defense - метод defend(), который выводит сообщение о защите.
// Требования:
// 1. Создайте класс Warrior, использующий Attack и Defense.
// 2. Создайте класс Mage, использующий Attack и Heal.
// 3. Создайте класс Paladin, использующий все три миксина.
// 4. Каждый персонаж должен иметь поля name и health.
// 5. Создайте метод Status() для отображения состояния персонажа.
// 6. Реализуйте восстановление здоровья на 20 единиц через heal().
// 7. Реализуйте защиту, которая увеличивает показатель брони персонажа на 10 единиц через defend().
// В main() создайте по одному персонажу каждого типа и продемонстрируйте их способности.




class Character {
  String name;
  int health;
  int armor = 0;

  Character(this.name, this.health);

  void Status() {
    print('Имя: $name');
    print('Здоровье: $health');
    print('Броня: $armor');
  }
}

mixin Attack on Character {
  void attack() {
    print('$name атакует!');
  }
}
mixin Heal on Character {
  void heal() {
    health += 20;
    print('$name восстановил 20 единиц здоровья.');
  }
}

mixin Defense on Character {
  void defend() {
    armor += 10;
    print('$name увеличил броню на 10 единиц.');
  }
}

class Warrior extends Character with Attack, Defense {
  Warrior(String name, int health) : super(name, health);
}

class Mage extends Character with Attack, Heal {
  Mage(String name, int health) : super(name, health);
}

class Paladin extends Character with Attack, Heal, Defense {
  Paladin(String name, int health) : super(name, health);
}

void main() {
  Warrior warrior = Warrior('Arslan', 100);
  Mage mage = Mage('Aliya', 80);
  Paladin paladin = Paladin('Bonu', 120);

  print('WARRIOR');
  warrior.attack();
  warrior.defend();
  warrior.Status();

  print('MAGE');
  mage.attack();
  mage.heal();
  mage.Status();

  print('PALADIN');
  paladin.attack();
  paladin.heal();
  paladin.defend();
  paladin.Status();
}

// Задание №1. Создайте Instrument и три класса: Guitar, Piano, Drum. У каждого метод 
// play() должен выводить свой звук. Создайте функцию startConcert(Instrument instrument
// ), которая вызывает play().

// Задание №2. Создайте класс Greeter с методом greet(). Добавьте RussianGreeter, 
// EnglishGreeter и KyrgyzGreeter. Используйте одну переменную типа Greeter для вызова 
// всех трёх реализаций.

class Instrument {
  void play() {
    print("Инструмент играет");
  }
}

class Guitar extends Instrument {
  @override
  void play() {
    print("Гитара: брынь-брынь");
  }
}

class Piano extends Instrument {
  @override
  void play() {
    print("Пианино: динь-динь");
  }
}

class Drum extends Instrument {
  @override
  void play() {
    print("Барабан: бум-бум");
  }
}

void startConcert(Instrument instrument) {
  instrument.play();
}

void main() {
  startConcert(Guitar());
  startConcert(Piano());
  startConcert(Drum());
}
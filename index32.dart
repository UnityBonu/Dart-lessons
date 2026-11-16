class Greeter {
  void greet() {
    print("Hello!");
  }
}

class RussianGreeter extends Greeter {
  @override
  void greet() {
    print("Привет!");
  }
}

class EnglishGreeter extends Greeter {
  @override
  void greet() {
    print("Hello!");
  }
}

class KyrgyzGreeter extends Greeter {
  @override
  void greet() {
    print("Салам!");
  }
}

void main() {
  Greeter greeter;

  greeter = RussianGreeter();
  greeter.greet();

  greeter = EnglishGreeter();
  greeter.greet();

  greeter = KyrgyzGreeter();
  greeter.greet();
}
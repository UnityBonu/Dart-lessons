class Worker {
  void work() {
    print('Я работаю');
  }
}

// extends наследует реализацию
// implements требует предоставить свою реализацию
class Developer implements Worker {
  @override
  void work() {
    print('Я пишу код');
  }
}

void main() {
  Developer dev = Developer();
  dev.work();
}
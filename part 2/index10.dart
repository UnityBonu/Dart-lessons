class Student {
  final String name;
  final List<int> _grades = [];

  Student(this.name);

  List<int> get grades => List.unmodifiable(_grades);

  void addGrade(int grade) {
    if (grade < 0 || grade > 100) {
      throw ArgumentError('Оценка должна быть от 1 до 100');
    }
    _grades.add(grade);
  }

  // средний балл
  double? get average {
    if (_grades.isEmpty) {
      return null;
    }

    int summa = _grades.reduce((a, b) => a + b);
    return summa / _grades.length;
  }

  // статус студента
  bool get isPassed => (average ?? 0) >= 60;

  void info() {
    print('Имя студента: $name');
    print('Оценки: $grades');

    if (average == null) {
      print('Средний балл: нет оценок');
    } else {
      print('Средний балл: ${average!.toStringAsFixed(2)}');
    }

    print('Сдал: ${isPassed ? 'Да' : 'Нет'}');
  }
}

void main() {
  Student stud = Student('Rayana');

  stud.addGrade(60);
  stud.addGrade(70);
  stud.addGrade(40);
  stud.addGrade(90);
  stud.addGrade(90);

  stud.info();
}
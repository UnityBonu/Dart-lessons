class Student {
    String name;
    List<int> grades = [];

    Student(this.name);

    void addGrade(int grade) {
        if (grade < 0 || grade > 5) {
            print('Некорректные значение');
            return;
        }
        grades.add(grade);
    }

    //Средний балл
    double getAverage() {
        if (grades.isEmpty) {
            return 0;
        }
        int summa = 0;
        for (int grade in grades) {
            summa += grade;
        }
        return summa / grades.length;
    }
    //Проверка успешности студента
    bool isPassed() {
        return grades.isNotEmpty && getAverage() >= 3;
    }

    void main() {
        print('Студент: $name');
        print('Оценки: $grades');
        print('Средний балл: ${getAverage()}');
        print('Сдал ли экзамен: ${isPassed() ? 'ДА' : 'НЕТ'}');
    }
}

void main() {
    Student stud1 = Student('Aliya');
    stud1.addGrade(3);
    stud1.addGrade(2);
    stud1.addGrade(2);
    stud1.addGrade(5);
    print('Средний балл: ${stud1.getAverage()}');   
}
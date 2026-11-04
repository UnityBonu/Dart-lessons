// Инкапсуляция - Encapsulation - это один из принципов объектно-ориентированного программирования, который заключается в скрытии внутренней реализации объекта и предоставлении доступа к его данным только через определенные методы (геттеры и сеттеры). Это позволяет защитить данные от некорректного использования и обеспечивает контроль над их изменением.

class Student {
    String name;
    int _age;
    Student(this.name, this._age);

    int get age {
        return _age;
    }

    set age(int value) {
        if (value >= 1 && value <= 100) {
            _age = value;
        } 
    }

    void info() {
        print('$name Возраст: $_age');
    }

}

void main() {
    Student student = Student('Vic', 33); //Экзампяр
    student.age = -44;
    student.info();
}
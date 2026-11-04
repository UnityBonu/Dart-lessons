// Тема: ООП - обьектно-ориентированное программирование

class Student {
    String name = '';
    int age = 0;
    double height = 0;


    Student(this.name, this.age, this.height);

q   bool checkAge() {
        return age >= 20;
    }

    void info() {
        print('Name: $name, Height: $height (Взрослый: ${checkAge()? 'ДА' : 'НЕТ'})');
        };  
}

void main() {
    Student student1 = Student();
    Student student2 = Student();
    student1.name = 'Gulchapchap';
    student1.age = 18;
    student1.height = 1.88;
    student1.name = 'Jamshit';
    student2.name = 'Jamshid';
    student2.age = 29;
    student2.height = 1.78;

    print(' ${student1.name} ${student1.age} ${student1.height}');
    print(' ${student2.name} ${student2.age} ${student2.height}');
    Student student3 = Student('Gulnora', 20, 1.65);
    student1.info();
    student2.info();
}
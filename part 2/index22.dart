// абстрактный класс - класс который предназначен для использования
// в качестве основы других классов

abstract class Shape {
    double calculateArea();

    void showArea() {
        print('Плошадь: ${calculateArea()}');
    }
}

class Square extends Shape {
    double side;
    Square(this.side);

    @override
    double calculateArea() {
        return side *side;
    }
}

void main() {
    Square sq = Square(6);
    sq.showArea();
}
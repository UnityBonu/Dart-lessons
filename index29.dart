abstract class Shape{
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
        return side * side;
    }
}

//прямоугольник
class Rectangle extends Shape {
    double width;
    double height;
    Rectangle(this.width, this.height);

    @override
    double calculateArea() {
        return width * height;
    }
}

//треушольник
class Triangle extends Shape {
    double base;
    double height;
    Triangle(this.base, this.height);
    
    @override
    double calculateArea() {
        return base * height / 2;
    }
}

void main() {
    List<Shape> shapes = [Square(5), Rectangle(4, 8), Triangle(6, 10)];
    for (Shape shape in shapes) {
        shape.showArea();
    }
}
class Machine {
    void start() {
        print('Машина заведена');
    }
}

mixin Diagnostics on Machine {
    void startWithCheck() {
        print('Проверяем систему у $title')
        super.title();
        print('Проверка завершена у $title');
    }
}

class Printer extends Machine with Diagnostics {
    Printer(super.title);
}

void main() {
    Printer pri = Printer('Тойото Королла');
    pri.startWithCheck();
}
// Новая тема implements - инртерфе
// abstract - запрещает создавать обьект самого Device
// interface - указывает, что класс предназначен для реализации интерфейса

abstract interface class Device {
    void turnOn();
    void turnOff();
}

class Phone implements Device {
    @override
    void turnOn() {
        print('Телефон включен');
    }

    @override
    void turnOff() {
        print('Телефон выключен');
    }
}

class TV implements Device {
    @override
    void turnOn() {
        print('Телевизор включен и показывает че то');
    }

    @override
    void turnOff() {
        print('Телевизор выключен');
    }
}

void main() {
    Phone iphone = Phone();
    TV tv_samsung = TV();
    iphone.turnOn();
    tv_samsung.turnOn();
    tv_samsung.turnOff();
    iphone.turnOff();
}


class Device {
    String name;
    Device(this.name);

    void turnOn() {
        print('$name включено');
    }
}

mixin Logging {
    void log(String message) {
        print('Лог: $message');
    }
}

mixin Battery {
    int _charge = 100;
    int get charge => _charge;
    bool useBattery(int amount) {
        if (amount > 0 && amount <= _charge) {
            _charge -= amount;
            return true;
        } else {
            print("Недостаточно заряда и че то еще");
            return false;
        }
    }
}

abstract interface class Connectable {
    void connect();
    bool get isConnected;
}

class SmartWatch extends Device with Logging, Battery implements Connectable {
    bool _connected = false;
    SmartWatch(super.name);

    @override
    bool get isConnected => _connected;

    @override 
    void connect() {
        _connected = true;
        log('Часы подлючены');
    }

    @override
    void turnOn() {
        log('Осталось заряда: $charge%');
    }
}

void main() {
    SmartWatch watch = SmartWatch('apple watch');
    watch.connect();
    watch.turnOn();
    print('Подключено: ${watch.isConnected}');
    print('Зарядка: ${watch.charge}%');
}
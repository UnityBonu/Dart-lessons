class Delivery {
    String address;
    double distance;
    Delivery(this.address, this.distance);

    double calculateCost() {
        return distance * 20;
    }

    void info() {
        print('Адрес: $address - $distance км');
        print('Стоимосты: ${calculateCost()}сом');
    }
}

class CourierDelivery extends Delivery {
    CourierDelivery(super.address, super.distance);

    @override
    double calculateCost() {
        return super.calculateCost() + 100;
    }
}

class ExpressDelivery extends Delivery {
    ExpressDelivery(super.address, super.distance);

    @override
    double calculateCost() {
        return super.calculateCost() + 300;
    }
}

void main() {
    Delivery del = Delivery('Osh', 100);
    CourierDelivery cour = CourierDelivery('Каракол', 30);
    ExpressDelivery exp = ExpressDelivery('Баткен', 60);
    del.info();
    cour.info();
    exp.info();
}
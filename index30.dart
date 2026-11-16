abstract interface class PaymentMethod {
    void pay(double amount);
}

class CardPayment implements PaymentMethod {
    @override
    void pay(double amount) {
        print('Оплачено картой: $amount сом');
    }
}

class CashPayment implements PaymentMethod {
    @override
    void pay(double amount) {
        print('Оплачено наличкой: $amount сом');
    }
}

class MobilePayment implements PaymentMethod {
    @override
    void pay(double amount) {
        print('Оплачено через приложение: $amount сом');
    }
}

void processPayment(PaymentMethod method, double amount) {
    if (amount <= 0) {
        print('Некорректное значение');
        return;
    }
    method.pay(amount);
}

void main() {
    CardPayment card = CardPayment();
    CashPayment cash = CashPayment();
    MobilePayment mobile = MobilePayment();

    processPayment(card, 1500);
    processPayment(cash, 2900);
    processPayment(mobile, 900);
}




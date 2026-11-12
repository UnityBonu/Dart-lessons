class BankAccount {
    String owner;
    double balance;
    BankAccount(this.owner, this.balance);   

    void up_balance(double amount) {
        if (amount > 0) {
            balance += amount;
            print('Пополнено $amount сом. Теперь у вас $balance сом.');
        } else {
            print('Ошибка: сумма пополнения должна быть положительной.');
        }
    }

    void down_balance(double amount) {
        if (amount > 0 ) {
            print('Некорректные значение.');
            return;
        }
        if (amount > balance) {
            print('Ошибка: недостаточно средств на счете.');
            return;
        }
        balance -= amount;
        print('Снято $amount сом. Теперь у вас $balance сом.');
    }

    void info() {
        print('Владелец: $owner, Баланс: $balance сом.');
    }
}

void main() {
    BankAccount account1 = BankAccount('Zen', 25000.0);
    BankAccount account2 = BankAccount('Rey', 15700.0);
    account1.up_balance(50000);
    account1.down_balance(24700);
    account1.info();
    account2.info();
}
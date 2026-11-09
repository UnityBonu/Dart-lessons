// Задача. Банковские счета и перевод денег 
// Надо созадть программу на Dart, в которой юзеры могут хранить деньги на своих банковских счетах , пополнять баланс, снимать деньги с баланса и переводить деньги друг другу.
// Создайте класс BankAccount, со свойствами owner, _balance 
// Методы класса:
// deposit(double amount) - метод для пополнения баланса
// withdraw(double amount) - метод для снятия денег с баланса
// transferTo(BankAccount receiver, double amount) - метод для перевода денег другому 
// showInfo() - информация имя владельца и о счете
// Геттер balance позволяет получить текущий баланс счета.



class BankAccount {
  String owner;
  double _balance;

  BankAccount(this.owner, this._balance);

  double get balance {
    return _balance;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print('Деньги добавлены');
    } else {
      print('Неправильная сумма');
    }
  }

// снятия денег
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance = _balance - amount;
      print('Деньги сняты');
    } else {
      print('Недостаточно денег');
    }
  }

  void transferTo(BankAccount receiver, double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance = _balance - amount;
      receiver._balance = receiver._balance + amount;
      print('Перевод выполнен');
    } else {
      print('Недостаточно денег');
    }
  }

  void showInfo() {
    print('Владелец: $owner');
    print('Баланс: $_balance');
  }
}

void main() {
  BankAccount user1 = BankAccount('Ali', 1000);
  BankAccount user2 = BankAccount('Malika', 500);
  user1.deposit(200);
  user1.withdraw(100);
  user1.transferTo(user2, 300);
  user1.showInfo();
  user2.showInfo();
}

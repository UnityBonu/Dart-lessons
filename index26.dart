// Задание Nº2. Электронный кошелёк класс Electronicwallet
// Требования:
// 1. Создайте приватные поля _balance, _pin и _isBlocked.
// 2. Создайте конструктор, принимающий начальный баланс и PIN-код. 5 // 3. Создайте getter balance, который возвращает текущий баланс.
// 4. Создайте метод checkPin(String pin) для проверки PIN-кода.
// 5. Создайте метод deposit(double amount) для пополнения баланса.
// 6. Создайте метод withdraw(double amount, String pin) для снятия денег после проверки PIN-кода.
// 7. После трёх неправильных попыток ввода PIN-кода кошелёк должен блокироваться.
// 8. Создайте метод changePin(String oldPin, String newPin) для изменения PIN-кода.
// 9. Создайте метод transfer(ElectronicWallet receiver, double amount, String pin)
// для перевода денег другому пользователю.
// 10. Запретите любые финансовые операции с заблокированным кошельком.
// 11. Создайте метод info() для отображения состояния кошелька без раскрытия
// В main() создайте два кошелька, выполните пополнение, снятие, перевод денег, изменение PIN-кода и проверьте работу блокировки.



class ElectronicWallet {
  double _balance;
  String _pin;
  bool _isBlocked = false;
  int _wrongAttempts = 0;

  ElectronicWallet(this._balance, this._pin);

  double get balance => _balance;

bool get isAvailable {
  if (_isBlocked == false) {
    return true;
  } else {
    return false;
  }
}

  bool checkPin(String pin) {
    if (_isBlocked == true) return false;

    if (_pin == pin) {
      _wrongAttempts = 0;
      return true;
    }

    _wrongAttempts++;

    if (_wrongAttempts >= 3) {
      _isBlocked = true;
      print('Кошелёк заблокирован!');
    }

    return false;
  }

  void deposit(double amount) {
    if (isAvailable == false || amount <= 0) return;

    _balance += amount;
  }

  void withdraw(double amount, String pin) {
    if (isAvailable == false || checkPin(pin) == false) return;
    if (amount <= 0 || amount > _balance) return;

    _balance -= amount;
  }

  void changePin(String oldPin, String newPin) {
    if (isAvailable == false || checkPin(oldPin) == false) return;
    if (newPin.length != 4) return;

    _pin = newPin;
  }

  void transfer(ElectronicWallet receiver, double amount, String pin) {
    if (isAvailable == false || receiver.isAvailable == false) return;
    if (checkPin(pin) == false) return;
    if (amount <= 0 || amount > _balance) return;

    _balance -= amount;
    receiver._balance += amount;
  }

  void info() {
    print('Баланс: $_balance');

    if (_isBlocked == true) {
      print('Заблокирован');
    } else {
      print('Активен');
    }
  }
}

void main() {
  ElectronicWallet wallet1 = ElectronicWallet(1000, '1234');
  ElectronicWallet wallet2 = ElectronicWallet(500, '5678');

  wallet1.info();
  wallet2.info();

  wallet1.deposit(500);
  wallet1.withdraw(200, '1234');
  wallet1.transfer(wallet2, 300, '1234');
  wallet1.changePin('1234', '9999');

  wallet1.info();
  wallet2.info();

  wallet1.withdraw(100, '1111');
  wallet1.withdraw(100, '2222');
  wallet1.withdraw(100, '3333');

  wallet1.info();
}

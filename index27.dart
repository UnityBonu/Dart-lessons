// Задание №1. Разработка системы туристического агентства
// 1. Создание класса Tourist, с полями: name, age, balance (в сомах).
// Методы:
// showInfo() — выводит информацию о туристе.
// addMoney(double amount) — пополняет баланс туриста.
// pay(double amount) — списывает деньги с баланса, если их достаточно.
// В противном случае выводит сообщение о нехватке средств.
// 2. Создание класса Tour, с полями:
// country — страна путешествия.
// days — количество дней путешествия.
// pricePerDay — стоимость одного дня проживания.
// Методы:
// calculatePrice() — возвращает общую стоимость тура по формуле:
// Стоимость = Количество дней × Цена за день.
// showTourInfo() — выводит страну, количество дней и общую стоимость тура.
// 3. Создание класса TravelAgency, с полями:
// agencyName
// List<Tour> tours — список доступных туров.
// Методы:
// addTour(Tour tour) — добавляет новый тур в список.
// showTours() — выводит все доступные туры.
// bookTour(Tourist tourist, Tour tour) — оформляет путёвку для туриста.
// Проверить, хватает ли денег на балансе туриста.
// Если денег достаточно, списать стоимость тура с баланса.
// Вывести сообщение об успешном бронировании с именем туриста и страной назначения.
// Если денег недостаточно, вывести сообщение об ошибке.


class Tourist {
  String name;
  int age;
  double balance;

  Tourist(this.name, this.age, this.balance);

  void showInfo() {
    print("Имя: $name");
    print("Возраст: $age");
    print("Баланс: $balance сом");
  }

  void addMoney(double amount) {
    if (amount > 0) {
      balance = balance + amount;
      print("Баланс пополнен на $amount сом");
    } else {
      print("Неверная сумма");
    }
  }

  void pay(double amount) {
    if (amount > 0 && balance >= amount) {
      balance = balance - amount;
      print("Оплата прошла успешно");
    } else {
      print("Недостаточно средств");
    }
  }
}


class Tour {
  String country;
  int days;
  double pricePerDay;

  Tour(this.country, this.days, this.pricePerDay);

  double calculatePrice() {
    return days * pricePerDay;
  }

  void showTourInfo() {
    print("Страна: $country");
    print("Количество дней: $days");
    print("Общая стоимость: ${calculatePrice()} сом");
  }
}


class TravelAgency {
  String agencyName;
  List<Tour> tours = [];

  TravelAgency(this.agencyName);

  void addTour(Tour tour) {
    tours.add(tour);
    print("Тур добавлен");
  }

  void showTours() {
    print("Туристическое агентство: $agencyName");

    for (Tour tour in tours) {
      tour.showTourInfo();
    }
  }

  void bookTour(Tourist tourist, Tour tour) {
    double price = tour.calculatePrice();

    if (tourist.balance >= price) {
      tourist.pay(price);

      print("Бронирование успешно!");
      print("Турист: ${tourist.name}");
      print("Страна: ${tour.country}");
      print("Стоимость: $price сом");
    } else {
      print("Ошибка! Недостаточно денег на балансе.");
      print("Не хватает: ${price - tourist.balance} сом");
    }
  }
}


void main() {
  Tourist tourist = Tourist("Bonu", 17, 50000);
  Tour tour1 = Tour("Turkey", 7, 5000);
  Tour tour2 = Tour("Dubai", 5, 7000);
  Tour tour3 = Tour("Germany", 10, 8000);
  TravelAgency agency = TravelAgency("Dream Travel");

  agency.addTour(tour1);
  agency.addTour(tour2);
  agency.addTour(tour3);
  agency.showTours();
  tourist.showInfo();
  agency.bookTour(tourist, tour1);
}

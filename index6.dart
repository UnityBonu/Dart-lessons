//Задание: Созлать класс Book
// с Название книги, автлром, количество страниц, жанр, год выпуска
// Добавить метод isLongBook, который возвращает true, если количество страниц больше 300, иначе false.Создать список из трех книг и выводить большие(страницы) книги
// Создать метод yearCheck(year) которая принимает год и выводит книги это года

class Book {
  String title;
  String author;
  int pages;
  String genre;
  int year;

  Book(this.title, this.author, this.pages, this.genre, this.year);

  bool isLongBook() {
    return pages > 300;
  }

  static void showLongBooks(List<Book> books) {
    print('Длинные книги (более 300 страниц):');
    for (Book book in books) {
      if (book.isLongBook()) {
        print('- ${book.title} (${book.pages} страниц)');
      }
    }
  }

  static void yearCheck(List<Book> books, int year) {
    print('Книги года $year:');
    for (Book book in books) {
      if (book.year == year) {
        print('- ${book.title}');
      }
    }
  }
}

void main() {
  List<Book> books = [
    Book('1984', 'Джордж Оруэлл', 328, 'Дистопия', 1949),
    Book('Война и мир', 'Лев Толстой', 1225, 'Исторический роман', 1869),
    Book('Маленький принц', 'Антуан де Сент-Экзюпери', 96, 'Фантастика', 1943),
  ];

  Book.showLongBooks(books);
  Book.yearCheck(books, 1949);
}

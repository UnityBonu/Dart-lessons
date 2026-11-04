// Создайте классы  Book и Library 


class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, {this.isAvailable = true});
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Книга "${book.title}" добавлена');
  }

  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
    print('Книга "$title" удалена');
  }


  void searchBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        print('Найдена: ${book.title}, автор: ${book.author}');
        print(book.isAvailable ? 'Доступна' : 'Уже выдана');
        return;
      }
    }

    print('Книга не найдена');
  }

  void borrowBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print('Книга "$title" выдана читателю');
        } else {
          print('Книга уже выдана');
        }
        return;
      }
    }

    print('Книга не найдена');
  }


  void returnBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        if (!book.isAvailable) {
          book.isAvailable = true;
          print('Книга "$title" возвращена');
        } else {
          print('Эта книга уже находится в библиотеке');
        }
        return;
      }
    }

    print('Книга не найдена');
  }

  void showBooks() {
    for (var book in books) {
      print(
        '${book.title} | ${book.author} | '
        '${book.isAvailable ? "Доступна" : "Выдана"}'
      );
    }
  }
}

void main() {
  Library library = Library();

  Book book1 = Book('Маленький принц', 'Антуан де Сент-Экзюпери');
  Book book2 = Book('Гарри Поттер', 'Джоан Роулинг');
  Book book3 = Book('Моя вина', 'Мерседес Рон');

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  print('Все книги');
  library.showBooks();

  print(' Поиск книги');
  library.searchBook('Маленький принц');

  print(' Выдача книги');
  library.borrowBook('Маленький принц');

  print('Повторная выдача');
  library.borrowBook('Маленький принц');

  print(' Возвращение книги ');
  library.returnBook('Маленький принц');

  print(' Удаление книги');
  library.removeBook('Гарри Поттер');

  print(' Итоговый список');
  library.showBooks();
}

// / abstract class - нельзя создать напрямую, можно наследовать 
// /
// / abstract interface class - удобно для описания обязательных методов 
// /
// / base class - требует наследовать реализацию, а не только повторять интерфейс, за пределами библотека
// /
// / interface class - разрешает реализировать интерфейс, но не наследовть реализацию извне бмблиотеки
// /
// / mixin class - можно использовать как класс или mixin
// /
// / final class - запрещает наследование и реализацию извне библиотеки
// /
// / sealed class - ограничивает прямых наследников одной библиотеки


sealed class Result {}

class Success extends Result {
    String message;
    Success(this.message);
}

class Failure extends Result {
    String error;
    Failure(this.error);
}

void showResult(Result result) {
    switch (result) {
        case Success():
        print('Успех: ${result.message}');
        case Failure():
        print('Ошибка: ${result.error}');
    }
}

void main() {
    showResult(Success('Данные сохранено'));
    showResult(Failure('Нет соединения'));
}
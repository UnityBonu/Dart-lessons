// Интернет магазин
class Product {
  String name;
  double price;
  Product(this.name, this.price);

  void infa(){
    print('Название: $name, Цена: $price сом.');
  }
}

class ShoppingCart {
  List<Product> products = [];

    // Добавление товара в корзину
  void addProduct(Product product) {
    products.add(product);
    print('Товар ${product.name} добавлен в корзину.');
  }
    //Подсчета общей стоимости 
    double getTotal() {
    double total = 0;
    for (Product product in products) {
      total += product.price;
    }
    return total;
  }

  //Показ всех товаров в корзине
  void showProducts() {
    print('Товары в корзине:');
    for (Product product in products) {
      product.info();
    }
    print('Итого: ${getTotal()} сом.');
  }
}

void main() {
    Product notebook = Product('Acer aspire 13', 22300.00);
    Product laptop = Product('Lenovo sper3', 27390.00);
    Product moblie = Product('Iphone 18 pro', 143000.00);
    ShoppingCart cart = ShoppingCart();
    cart.addProduct(notebook);
    cart.addProduct(moblie);
    cart.showProducts();
}
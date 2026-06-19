abstract class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);

  String getInfo();
}

class Food extends MenuItem {
  Food(super.name, super.price) ;

  @override
  String getInfo() {
    return "Food: $name - $price EGP";
  }
}

abstract class Staff {
  String name;

  Staff(this.name);

  void work();
}

class Chef extends Staff {
  Chef(super.name);

  @override
  void work() {
    print("$name  cooks");
  }
}

class RestaurantOrder {
  List<MenuItem> items = [];

  void addItem(MenuItem item) {
    items.add(item);
  }

  double calculateTotal() {
    double total = 0;

   
  for (int i = 0; i < items.length; i++) {
    total += items[i].price;
  }

    return total;
  }
}

void main() {
  Food pizza = Food("pizza", 100);
  Food juice = Food("Orange Juice", 30);

  RestaurantOrder order = RestaurantOrder();

  order.addItem(pizza);
  order.addItem(juice);

 Chef chef = Chef("Ali");

  print(pizza.getInfo());
  print(juice.getInfo());

  chef.work();

  print("Total = ${order.calculateTotal()} EGP");
}
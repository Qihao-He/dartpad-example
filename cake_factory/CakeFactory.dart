import 'dart:async';

class Cake {}

class Order {
  String type;
  Order(this.type);
}

void main() {
  final controller = new StreamController();

  final order = new Order('banana');

  controller.sink.add(order);
}

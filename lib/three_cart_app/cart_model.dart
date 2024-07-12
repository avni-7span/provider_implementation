import 'dart:ui';

class CartModel {
  CartModel({this.name, this.id, this.quantity});

  String? name;
  int? id;
  int? quantity;
}

List<CartModel> itemList = [
  CartModel(name: 'item1', id: 1, quantity: 5),
  CartModel(name: 'item2', id: 2, quantity: 3),
  CartModel(name: 'item3', id: 3, quantity: 6),
  CartModel(name: 'item4', id: 4, quantity: 4),
  CartModel(name: 'item5', id: 5, quantity: 2),
  CartModel(name: 'item6', id: 6, quantity: 7),
  CartModel(name: 'item7', id: 7, quantity: 8),
  CartModel(name: 'item8', id: 8, quantity: 5),
  CartModel(name: 'item9', id: 9, quantity: 1),
  CartModel(name: 'item10', id: 10, quantity: 9),
];

import 'package:flutter/material.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_model.dart';

class CartServiceProvider extends ChangeNotifier {
  List<CartModel> cartItemList = [];

  void addToCart(CartModel item) {
    if (!cartItemList.contains(item)) {
      cartItemList.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(CartModel item) {
    if (cartItemList.contains(item)) {
      cartItemList.remove(item);
    }
    notifyListeners();
  }
}

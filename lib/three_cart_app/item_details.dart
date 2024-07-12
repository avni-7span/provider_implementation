import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_model.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_service_provider.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({super.key, required this.model});

  CartModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Item Details',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Text(
            context.watch<CartServiceProvider>().cartItemList.length.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(width: 5),
          const Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          Text(
            model.id.toString(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            model.name ?? "",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Available Quantity : ${model.quantity}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              context.read<CartServiceProvider>().addToCart(model);
            },
            child: const Text(
              'Add to cart',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              context.read<CartServiceProvider>().removeFromCart(model);
            },
            child: const Text(
              'Remove from cart',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

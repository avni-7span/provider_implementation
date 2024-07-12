import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_model.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_service_provider.dart';
import 'package:provider_package_implemenatation/three_cart_app/item_details.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop Now!',
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
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final model = itemList[index];
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ItemDetails(model: model),
              ));
            },
            leading: Text(
              '${model.id}',
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            title: Text(
              '${model.name}',
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Text(
              'Available : ${model.quantity}',
              style: const TextStyle(color: Colors.black, fontSize: 10),
            ),
          );
        },
      ),
    );
  }
}

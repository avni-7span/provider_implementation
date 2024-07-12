import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/one_textdata_passing/user_provider.dart';
import 'package:provider_package_implemenatation/three_cart_app/cart_service_provider.dart';
import 'package:provider_package_implemenatation/three_cart_app/shopping_screen.dart';
import 'package:provider_package_implemenatation/two_incremenet_decrement_counter/counter_provider.dart';
import 'package:provider_package_implemenatation/two_incremenet_decrement_counter/home_screen.dart';
import 'one_textdata_passing/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartServiceProvider(),
        )
      ],
      child: const MaterialApp(
        home: ShoppingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

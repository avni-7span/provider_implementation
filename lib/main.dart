import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/one_textdata_passing/user_provider.dart';

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
        )
      ],
      child: MaterialApp(
        home: ScreenOne(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

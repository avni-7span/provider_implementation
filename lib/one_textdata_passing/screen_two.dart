import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/one_textdata_passing/user_provider.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen Two',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().userName ?? '',
          style: TextStyle(
            fontSize: 40,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.blue[700]!,
          ),
        ),
      ),
    );
  }
}

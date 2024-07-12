import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_implemenatation/one_textdata_passing/screen_two.dart';
import 'package:provider_package_implemenatation/one_textdata_passing/user_provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController dataController = TextEditingController();

  @override
  void dispose() {
    dataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen One',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: dataController,
              decoration: const InputDecoration(
                hintText: 'Enter Data',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserData(newUserData: dataController.text);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ScreenTwo(),
                  ),
                );
              },
              child: const Icon(Icons.send, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

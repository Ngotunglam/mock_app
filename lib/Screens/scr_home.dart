// Import dependencies
import 'package:flutter/material.dart';
import 'package:mock_app/Screens/scr_account.dart';

// ignore: camel_case_types
class Scr_Home extends StatelessWidget {
  const Scr_Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final test_theme = Theme.of(context).textTheme.bodyLarge?.color;
    return MaterialApp(
        theme: ThemeData(
          // Define your theme properties here
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: const Text('My AI App')),
            body: const Column(
              children: [
                Text('Welcome!'),
                Text('You are fucking good!'),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Scr_Account(),
                  ),
                );
              },
              child: const Icon(Icons.moving_outlined),
            )));
  }
}

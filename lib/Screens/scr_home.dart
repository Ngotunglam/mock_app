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
          colorScheme: const ColorScheme.light(),
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Image Generator'),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            body: const Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(""),
                ),
                Text('Welcome!',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                  "Let's create some fantastic image!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Scr_Account(),
                    ),
                  );
                },
                child: const Icon(Icons.account_box_outlined, size: 40))));
  }
}

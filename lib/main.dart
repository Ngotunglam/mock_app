// Import dependencies
import 'package:flutter/material.dart';
// Import pages
import 'package:mock_app/Screens/scr_account.dart';
import 'package:mock_app/Screens/scr_battle.dart';
import 'package:mock_app/Screens/scr_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My AI App',
      initialRoute: '/battle',
      routes: {
        '/': (context) => const Scr_Home(),
        '/account': (context) => const Scr_Account(),
        '/battle': (context) => const Scr_Battle()
      },
    );
  }
}

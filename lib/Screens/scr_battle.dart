// ignore_for_file: camel_case_types
// Import dependencies

import 'package:flutter/material.dart';
import 'package:mock_app/Classes/Test/cl_hero.dart';
import 'package:provider/provider.dart';

class Scr_Battle extends StatelessWidget {
  const Scr_Battle({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cl_Hero()),
        // ChangeNotifierProvider(create: (context) => Cl_Hero())
      ],
      child: const Scr_Battle_build(),
    );
  }
}

class Scr_Battle_build extends StatelessWidget {
  const Scr_Battle_build({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Battle"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/cat2.png'),
              ),
              Text(
                "\n  VS             ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.blue),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/nature1.jpg'),
              ),
            ],
          )),
    );
  }
}

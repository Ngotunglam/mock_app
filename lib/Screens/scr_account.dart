// ignore_for_file: camel_case_types

// Import dependencies
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Import classes
import 'package:mock_app/Classes/Test/cl_account_page_state.dart';

class Scr_Account extends StatelessWidget {
  const Scr_Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cl_AccountPageState(),
        child: const AccountScreen_build());
  }
}

class AccountScreen_build extends StatelessWidget {
  const AccountScreen_build({super.key});

  @override
  Widget build(BuildContext context) {
    // Get dynamic data
    var appState = context.watch<Cl_AccountPageState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User profile picture
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/cat2.png'),
            ),
            const SizedBox(height: 16.0),
            // User information
            // Get dynamic data
            Consumer<Cl_AccountPageState>(
                builder: (context, clinstance, child) {
              return Text(
                clinstance.current.asCamelCase,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            Text('${appState.current.asLowerCase}@gmail.com'),
            const SizedBox(height: 16.0),
            // Account actions
            ElevatedButton(
              onPressed: () {
                // Handle change random action
                appState.getNext();
              },
              child: const Text('Change'),
            ),
          ],
        ),
      ),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<Cl_AccountPageState>();

//     return Scaffold(
//       body: Column(
//         children: [
//           const Text('A random idea:'),
//           Text(appState.current.asLowerCase),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notify/providers/user_provider.dart';

class ChangeHomePage extends StatefulWidget {
  const ChangeHomePage({super.key});

  @override
  State<ChangeHomePage> createState() => _ChangeHomePageState();
}

class _ChangeHomePageState extends State<ChangeHomePage> {
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Change here", style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Username: ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  context.watch<UserProvider>().username,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              context.read<UserProvider>().changeUsername(newUsername: usernameController.text);
              FocusManager.instance.primaryFocus?.unfocus();
              usernameController.clear();

            }, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}

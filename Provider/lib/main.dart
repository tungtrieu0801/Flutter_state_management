import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notify/providers/count_provider.dart';
import 'package:provider_notify/providers/user_provider.dart';

import 'Components/bottomNavigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigtor(),
      ),
    );
  }
}


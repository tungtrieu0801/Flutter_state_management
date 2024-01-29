import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String username;


  //constructor
  UserProvider({
    this.username = "Tung",
  });

  void changeUsername({
    required String newUsername,
}) async {
    username = newUsername;
    notifyListeners();
  }
}
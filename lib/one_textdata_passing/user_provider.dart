import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  UserProvider({this.userName});
  String? userName;

  void changeUserData({required String newUserData}) {
    userName = newUserData;
    notifyListeners();
  }
}

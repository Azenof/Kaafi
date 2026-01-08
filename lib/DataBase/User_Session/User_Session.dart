import 'package:firstapp/LocalStorage/smallStorage.dart';

class UserSession{
  SmallStorage sm=SmallStorage();
  String get userID=>sm.box.read("id");
  String get userEmail=>sm.box.read("email");
  String get userName=>sm.box.read("name")??"Hello";
}
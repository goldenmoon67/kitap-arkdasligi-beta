import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';

class UserManager {
  String? _userId;
  User? _user;

  String get userId => _userId!;
  bool get hasUser => _userId != null;

  User? get user => _user;

  void setUserId(String userId) {
    _userId = userId;
  }

  void setUser(User user) {
    _user = user;
  }
}

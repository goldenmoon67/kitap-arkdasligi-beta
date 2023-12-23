import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';

abstract class UserRepository {
  Future<User> sessionUser();
}

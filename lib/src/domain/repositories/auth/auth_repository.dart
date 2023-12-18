import 'package:kitap_arkadasligi/src/data/model/auth/login/login_create_model.dart';

abstract class AuthRepository {
  Future login(LoginCreateModel request);
}

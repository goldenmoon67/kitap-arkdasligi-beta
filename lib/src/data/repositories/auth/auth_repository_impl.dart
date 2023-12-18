import 'package:kitap_arkadasligi/src/data/model/auth/login/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/auth/auth_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

class AuthRepositoryImpl extends AuthRepository {
  final RestClient _client = getIt<RestClient>();

  @override
  Future login(LoginCreateModel request) async {
    await _client.login(request);
  }
}

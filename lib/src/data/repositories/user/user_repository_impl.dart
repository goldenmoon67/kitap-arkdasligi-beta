import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/user/user_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

class UserRepositoryImpl extends UserRepository {
  final RestClient _client = getIt<RestClient>();

  @override
  Future<User> sessionUser() async {
    return await _client.geSessiontUser();
  }
}

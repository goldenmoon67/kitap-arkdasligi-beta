import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/create/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/response/login_response.dart';
import 'package:kitap_arkadasligi/src/data/model/oauth/oauth_token.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/data/services/oauth/oauth_secure_storage.dart';
import 'package:kitap_arkadasligi/src/domain/managers/user_manager.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/auth/auth_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

class AuthRepositoryImpl extends AuthRepository {
  final RestClient _client = getIt<RestClient>();
  final OAuthSecureStorage _secureStorage = getIt<OAuthSecureStorage>();
  final UserManager _userManager = getIt<UserManager>();
  @override
  Future<LoginResponse> login(LoginCreateModel request) async {
    return await _client.login(request);
  }

  @override
  Future saveOAuthToken(OAuthToken oAuthToken,
      {bool saveFcmToken = false}) async {
    _userManager.setUserId(oAuthToken.userId);
    await _secureStorage.save(oAuthToken);

    if (saveFcmToken) {
      _getAndSaveFcmToken();
    }
  }

  Future _getAndSaveFcmToken() async {
    try {
      String? fcmToken = await FirebaseMessaging.instance.getToken();
      if (fcmToken == null) {
        return;
      }

      await saveFirebaseToken(fcmToken);
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }

  @override
  Future saveFirebaseToken(String firebaseToken) async {
    /* final token = FirebaseToken(firebaseToken: firebaseToken);
    if (_userManager.hasUser) {
      return _client.saveFirebaseTokenWithUser(token);
    } else {
      return _client.saveFirebaseToken(token);
    } */
  }
}

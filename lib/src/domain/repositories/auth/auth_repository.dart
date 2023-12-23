import 'package:kitap_arkadasligi/src/data/model/auth/login/create/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/response/login_response.dart';
import 'package:kitap_arkadasligi/src/data/model/oauth/oauth_token.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginCreateModel request);
  Future saveOAuthToken(OAuthToken oAuthToken, {bool saveFcmToken});
  Future saveFirebaseToken(String firebaseToken);
}

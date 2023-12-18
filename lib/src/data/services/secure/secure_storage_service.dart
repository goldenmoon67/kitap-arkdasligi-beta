import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kitap_arkadasligi/src/data/model/oauth/oauth_token.dart';
import 'package:kitap_arkadasligi/src/data/services/secure/secure_keys.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

class SecureStorageService {
  final FlutterSecureStorage _flutterSecureStorage =
      getIt<FlutterSecureStorage>();

  Future<String?> getUserId() {
    return _flutterSecureStorage.read(key: SecureKeys.userId);
  }

  Future<void> setUserId(String? userId) {
    return _flutterSecureStorage.write(key: SecureKeys.userId, value: userId);
  }

  Future<void> deleteUserId() {
    return _flutterSecureStorage.delete(key: SecureKeys.userId);
  }

  Future<OAuthToken?> getOAuthToken() async {
    String? jsonText =
        await _flutterSecureStorage.read(key: SecureKeys.oAuthToken);
    if (jsonText != null) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonText);
      return OAuthToken.fromMap(jsonMap);
    }
    return null;
  }

  Future<void> setOAuthToken(OAuthToken token) {
    Map<String, dynamic> jsonMap = token.toMap();
    String jsonText = jsonEncode(jsonMap);
    return _flutterSecureStorage.write(
        key: SecureKeys.oAuthToken, value: jsonText);
  }

  Future<void> deleteOAuthToken() {
    return _flutterSecureStorage.delete(key: SecureKeys.oAuthToken);
  }
}

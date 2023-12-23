import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_token.freezed.dart';
part 'firebase_token.g.dart';

@freezed
class FirebaseToken with _$FirebaseToken {
  const factory FirebaseToken({
    required String firebaseToken,
  }) = _FirebaseToken;
  factory FirebaseToken.fromJson(Map<String, dynamic> json) =>
      _$FirebaseTokenFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String nickName,
    required String email,
    required List<dynamic> friends,
    required List<String> books,
    required List<dynamic> movies,
    required List<dynamic> series,
    required List<dynamic> advertisements,
    required int rates,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';

part 'basic_user.freezed.dart';
part 'basic_user.g.dart';

@freezed
class BasicUser with _$BasicUser {
  const factory BasicUser({
    required String userId,
    required String name,
    String? imageUrl,
  }) = _BasicUser;
  factory BasicUser.fromJson(Map<String, dynamic> json) =>
      _$BasicUserFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String nickName,
    required String email,
    String? imageUrl,
    required List<dynamic> friends,
    required List<BookUserProfile> books,
    required List<dynamic> movies,
    required List<dynamic> series,
    required List<dynamic> advertisements,
    required int rates,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

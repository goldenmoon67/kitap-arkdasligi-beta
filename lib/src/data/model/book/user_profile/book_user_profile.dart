import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_user_profile.freezed.dart';
part 'book_user_profile.g.dart';

@freezed
class BookUserProfile with _$BookUserProfile {
  const factory BookUserProfile({
    required String id,
    required String name,
    String? imageUrl,
  }) = _BookUserProfile;
  factory BookUserProfile.fromJson(Map<String, dynamic> json) =>
      _$BookUserProfileFromJson(json);
}

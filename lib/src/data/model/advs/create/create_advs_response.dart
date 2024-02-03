import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/basic_user.dart';

part 'create_advs_response.freezed.dart';
part 'create_advs_response.g.dart';

@freezed
class CreateAdvsResponse with _$CreateAdvsResponse {
  const factory CreateAdvsResponse({
    required String advsId,
  }) = _CreateAdvsResponse;
  factory CreateAdvsResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAdvsResponseFromJson(json);
}

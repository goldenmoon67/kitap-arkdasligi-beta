import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/basic_user.dart';

part 'create_advs_request.freezed.dart';
part 'create_advs_request.g.dart';

@freezed
class CreateAdvsRequest with _$CreateAdvsRequest {
  const factory CreateAdvsRequest({
    required String description,
    required String prodType,
    required String prodId,
  }) = _CreateAdvsRequest;
  factory CreateAdvsRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAdvsRequestFromJson(json);
}

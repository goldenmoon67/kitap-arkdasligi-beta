import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/basic_user.dart';

part 'advs_detail.freezed.dart';
part 'advs_detail.g.dart';

@freezed
class AdvsDetail with _$AdvsDetail {
  const factory AdvsDetail({
    required List<dynamic>? comments,
    required List<dynamic>? acceptedPrivateConv,
    required List<dynamic>? privateComments,
    @JsonKey(name: "_id") required String id,
    required String title,
    required String description,
    required BasicUser ownerDetail,
    required String prodType,
    required BookUserProfile bookDetails,
  }) = _AdvsDetail;
  factory AdvsDetail.fromJson(Map<String, dynamic> json) =>
      _$AdvsDetailFromJson(json);
}

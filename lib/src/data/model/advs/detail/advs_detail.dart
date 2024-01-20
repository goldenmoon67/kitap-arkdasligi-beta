import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/author/author.dart';

part 'advs_detail.freezed.dart';
part 'advs_detail.g.dart';

@freezed
class AdvsDetail with _$AdvsDetail {
  const factory AdvsDetail({
    required List<dynamic> comments,
    required List<dynamic> acceptedPrivateConv,
    required List<dynamic> privateComments,
    @JsonKey(name: "_id") required String id,
    required String title,
    required String description,
    required String userId,
    required String prodType,
    required String prodId,
  }) = _AdvsDetail;
  factory AdvsDetail.fromJson(Map<String, dynamic> json) =>
      _$AdvsDetailFromJson(json);
}

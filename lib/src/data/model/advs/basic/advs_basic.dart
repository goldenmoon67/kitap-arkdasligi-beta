import 'package:freezed_annotation/freezed_annotation.dart';

part 'advs_basic.freezed.dart';
part 'advs_basic.g.dart';

@freezed
class AdvsBasic with _$AdvsBasic {
  const factory AdvsBasic({
    required String id,
    required String title,
    required String description,
    required String? prodType,
    required String prodId,
    String? bookImageUrl,
  }) = _AdvsBasic;
  factory AdvsBasic.fromJson(Map<String, dynamic> json) =>
      _$AdvsBasicFromJson(json);
}

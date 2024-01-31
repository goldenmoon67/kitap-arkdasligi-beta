import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/author/author.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/basic_user.dart';

part 'book_detail.freezed.dart';
part 'book_detail.g.dart';

@freezed
class BookDetail with _$BookDetail {
  const factory BookDetail({
    @JsonKey(name: "_id") required String id,
    required String name,
    String? description,
    String? imageUrl,
    required Author author,
    required int pageCount,
    required List<String?>? categories,
    required List<BasicUser?>? readByUsers,
    required List<String?>? commentDetails,
    required bool isReadByUser,
    @Default(0) int rates,
    String? orginalName,
  }) = _BookDetail;
  factory BookDetail.fromJson(Map<String, dynamic> json) =>
      _$BookDetailFromJson(json);
}

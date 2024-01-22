import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';

part 'comments_basic.freezed.dart';
part 'comments_basic.g.dart';

@freezed
class CommentBasic with _$CommentBasic {
  const factory CommentBasic({
    required String id,
    required String text,
    required String prodType,
    required String prodId,
    required String ownerId,
    required BookUserProfile relatedBook,
  }) = _CommentBasic;
  factory CommentBasic.fromJson(Map<String, dynamic> json) =>
      _$CommentBasicFromJson(json);
}

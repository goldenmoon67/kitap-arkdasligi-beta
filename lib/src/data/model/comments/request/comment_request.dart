import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/basic_user.dart';

part 'comment_request.freezed.dart';
part 'comment_request.g.dart';

@freezed
class CommentRequest with _$CommentRequest {
  const factory CommentRequest({
    required String comment,
  }) = _CommentRequest;
  factory CommentRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentRequestFromJson(json);
}

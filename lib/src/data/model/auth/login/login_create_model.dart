import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_create_model.freezed.dart';
part 'login_create_model.g.dart';

@freezed
class LoginCreateModel with _$LoginCreateModel {
  const factory LoginCreateModel({
    required String email,
    required String password,
  }) = _LoginCreateModel;

  factory LoginCreateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginCreateModelFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginCreateModel _$LoginCreateModelFromJson(Map<String, dynamic> json) {
  return _LoginCreateModel.fromJson(json);
}

/// @nodoc
mixin _$LoginCreateModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCreateModelCopyWith<LoginCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCreateModelCopyWith<$Res> {
  factory $LoginCreateModelCopyWith(
          LoginCreateModel value, $Res Function(LoginCreateModel) then) =
      _$LoginCreateModelCopyWithImpl<$Res, LoginCreateModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginCreateModelCopyWithImpl<$Res, $Val extends LoginCreateModel>
    implements $LoginCreateModelCopyWith<$Res> {
  _$LoginCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCreateModelImplCopyWith<$Res>
    implements $LoginCreateModelCopyWith<$Res> {
  factory _$$LoginCreateModelImplCopyWith(_$LoginCreateModelImpl value,
          $Res Function(_$LoginCreateModelImpl) then) =
      __$$LoginCreateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginCreateModelImplCopyWithImpl<$Res>
    extends _$LoginCreateModelCopyWithImpl<$Res, _$LoginCreateModelImpl>
    implements _$$LoginCreateModelImplCopyWith<$Res> {
  __$$LoginCreateModelImplCopyWithImpl(_$LoginCreateModelImpl _value,
      $Res Function(_$LoginCreateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginCreateModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCreateModelImpl implements _LoginCreateModel {
  const _$LoginCreateModelImpl({required this.email, required this.password});

  factory _$LoginCreateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginCreateModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginCreateModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCreateModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCreateModelImplCopyWith<_$LoginCreateModelImpl> get copyWith =>
      __$$LoginCreateModelImplCopyWithImpl<_$LoginCreateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCreateModelImplToJson(
      this,
    );
  }
}

abstract class _LoginCreateModel implements LoginCreateModel {
  const factory _LoginCreateModel(
      {required final String email,
      required final String password}) = _$LoginCreateModelImpl;

  factory _LoginCreateModel.fromJson(Map<String, dynamic> json) =
      _$LoginCreateModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginCreateModelImplCopyWith<_$LoginCreateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

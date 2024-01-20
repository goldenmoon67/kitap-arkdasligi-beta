// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasicUser _$BasicUserFromJson(Map<String, dynamic> json) {
  return _BasicUser.fromJson(json);
}

/// @nodoc
mixin _$BasicUser {
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicUserCopyWith<BasicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicUserCopyWith<$Res> {
  factory $BasicUserCopyWith(BasicUser value, $Res Function(BasicUser) then) =
      _$BasicUserCopyWithImpl<$Res, BasicUser>;
  @useResult
  $Res call({String userId, String name, String? imageUrl});
}

/// @nodoc
class _$BasicUserCopyWithImpl<$Res, $Val extends BasicUser>
    implements $BasicUserCopyWith<$Res> {
  _$BasicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicUserImplCopyWith<$Res>
    implements $BasicUserCopyWith<$Res> {
  factory _$$BasicUserImplCopyWith(
          _$BasicUserImpl value, $Res Function(_$BasicUserImpl) then) =
      __$$BasicUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String name, String? imageUrl});
}

/// @nodoc
class __$$BasicUserImplCopyWithImpl<$Res>
    extends _$BasicUserCopyWithImpl<$Res, _$BasicUserImpl>
    implements _$$BasicUserImplCopyWith<$Res> {
  __$$BasicUserImplCopyWithImpl(
      _$BasicUserImpl _value, $Res Function(_$BasicUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$BasicUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicUserImpl implements _BasicUser {
  const _$BasicUserImpl(
      {required this.userId, required this.name, this.imageUrl});

  factory _$BasicUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicUserImplFromJson(json);

  @override
  final String userId;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'BasicUser(userId: $userId, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicUserImplCopyWith<_$BasicUserImpl> get copyWith =>
      __$$BasicUserImplCopyWithImpl<_$BasicUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicUserImplToJson(
      this,
    );
  }
}

abstract class _BasicUser implements BasicUser {
  const factory _BasicUser(
      {required final String userId,
      required final String name,
      final String? imageUrl}) = _$BasicUserImpl;

  factory _BasicUser.fromJson(Map<String, dynamic> json) =
      _$BasicUserImpl.fromJson;

  @override
  String get userId;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$BasicUserImplCopyWith<_$BasicUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseToken _$FirebaseTokenFromJson(Map<String, dynamic> json) {
  return _FirebaseToken.fromJson(json);
}

/// @nodoc
mixin _$FirebaseToken {
  String get firebaseToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseTokenCopyWith<FirebaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseTokenCopyWith<$Res> {
  factory $FirebaseTokenCopyWith(
          FirebaseToken value, $Res Function(FirebaseToken) then) =
      _$FirebaseTokenCopyWithImpl<$Res, FirebaseToken>;
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class _$FirebaseTokenCopyWithImpl<$Res, $Val extends FirebaseToken>
    implements $FirebaseTokenCopyWith<$Res> {
  _$FirebaseTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseToken = null,
  }) {
    return _then(_value.copyWith(
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseTokenImplCopyWith<$Res>
    implements $FirebaseTokenCopyWith<$Res> {
  factory _$$FirebaseTokenImplCopyWith(
          _$FirebaseTokenImpl value, $Res Function(_$FirebaseTokenImpl) then) =
      __$$FirebaseTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class __$$FirebaseTokenImplCopyWithImpl<$Res>
    extends _$FirebaseTokenCopyWithImpl<$Res, _$FirebaseTokenImpl>
    implements _$$FirebaseTokenImplCopyWith<$Res> {
  __$$FirebaseTokenImplCopyWithImpl(
      _$FirebaseTokenImpl _value, $Res Function(_$FirebaseTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseToken = null,
  }) {
    return _then(_$FirebaseTokenImpl(
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseTokenImpl implements _FirebaseToken {
  const _$FirebaseTokenImpl({required this.firebaseToken});

  factory _$FirebaseTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseTokenImplFromJson(json);

  @override
  final String firebaseToken;

  @override
  String toString() {
    return 'FirebaseToken(firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseTokenImpl &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firebaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseTokenImplCopyWith<_$FirebaseTokenImpl> get copyWith =>
      __$$FirebaseTokenImplCopyWithImpl<_$FirebaseTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseTokenImplToJson(
      this,
    );
  }
}

abstract class _FirebaseToken implements FirebaseToken {
  const factory _FirebaseToken({required final String firebaseToken}) =
      _$FirebaseTokenImpl;

  factory _FirebaseToken.fromJson(Map<String, dynamic> json) =
      _$FirebaseTokenImpl.fromJson;

  @override
  String get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseTokenImplCopyWith<_$FirebaseTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

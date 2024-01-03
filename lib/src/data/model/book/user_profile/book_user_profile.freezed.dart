// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookUserProfile _$BookUserProfileFromJson(Map<String, dynamic> json) {
  return _BookUserProfile.fromJson(json);
}

/// @nodoc
mixin _$BookUserProfile {
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookUserProfileCopyWith<BookUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookUserProfileCopyWith<$Res> {
  factory $BookUserProfileCopyWith(
          BookUserProfile value, $Res Function(BookUserProfile) then) =
      _$BookUserProfileCopyWithImpl<$Res, BookUserProfile>;
  @useResult
  $Res call({String name, String? imageUrl});
}

/// @nodoc
class _$BookUserProfileCopyWithImpl<$Res, $Val extends BookUserProfile>
    implements $BookUserProfileCopyWith<$Res> {
  _$BookUserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$BookUserProfileImplCopyWith<$Res>
    implements $BookUserProfileCopyWith<$Res> {
  factory _$$BookUserProfileImplCopyWith(_$BookUserProfileImpl value,
          $Res Function(_$BookUserProfileImpl) then) =
      __$$BookUserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? imageUrl});
}

/// @nodoc
class __$$BookUserProfileImplCopyWithImpl<$Res>
    extends _$BookUserProfileCopyWithImpl<$Res, _$BookUserProfileImpl>
    implements _$$BookUserProfileImplCopyWith<$Res> {
  __$$BookUserProfileImplCopyWithImpl(
      _$BookUserProfileImpl _value, $Res Function(_$BookUserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$BookUserProfileImpl(
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
class _$BookUserProfileImpl implements _BookUserProfile {
  const _$BookUserProfileImpl({required this.name, this.imageUrl});

  factory _$BookUserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookUserProfileImplFromJson(json);

  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'BookUserProfile(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookUserProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookUserProfileImplCopyWith<_$BookUserProfileImpl> get copyWith =>
      __$$BookUserProfileImplCopyWithImpl<_$BookUserProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookUserProfileImplToJson(
      this,
    );
  }
}

abstract class _BookUserProfile implements BookUserProfile {
  const factory _BookUserProfile(
      {required final String name,
      final String? imageUrl}) = _$BookUserProfileImpl;

  factory _BookUserProfile.fromJson(Map<String, dynamic> json) =
      _$BookUserProfileImpl.fromJson;

  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$BookUserProfileImplCopyWith<_$BookUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

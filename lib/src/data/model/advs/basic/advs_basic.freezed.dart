// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advs_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvsBasic _$AdvsBasicFromJson(Map<String, dynamic> json) {
  return _AdvsBasic.fromJson(json);
}

/// @nodoc
mixin _$AdvsBasic {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get prodType => throw _privateConstructorUsedError;
  String get prodId => throw _privateConstructorUsedError;
  String? get bookImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvsBasicCopyWith<AdvsBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvsBasicCopyWith<$Res> {
  factory $AdvsBasicCopyWith(AdvsBasic value, $Res Function(AdvsBasic) then) =
      _$AdvsBasicCopyWithImpl<$Res, AdvsBasic>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? prodType,
      String prodId,
      String? bookImageUrl});
}

/// @nodoc
class _$AdvsBasicCopyWithImpl<$Res, $Val extends AdvsBasic>
    implements $AdvsBasicCopyWith<$Res> {
  _$AdvsBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? prodType = freezed,
    Object? prodId = null,
    Object? bookImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: freezed == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String?,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
      bookImageUrl: freezed == bookImageUrl
          ? _value.bookImageUrl
          : bookImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvsBasicImplCopyWith<$Res>
    implements $AdvsBasicCopyWith<$Res> {
  factory _$$AdvsBasicImplCopyWith(
          _$AdvsBasicImpl value, $Res Function(_$AdvsBasicImpl) then) =
      __$$AdvsBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? prodType,
      String prodId,
      String? bookImageUrl});
}

/// @nodoc
class __$$AdvsBasicImplCopyWithImpl<$Res>
    extends _$AdvsBasicCopyWithImpl<$Res, _$AdvsBasicImpl>
    implements _$$AdvsBasicImplCopyWith<$Res> {
  __$$AdvsBasicImplCopyWithImpl(
      _$AdvsBasicImpl _value, $Res Function(_$AdvsBasicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? prodType = freezed,
    Object? prodId = null,
    Object? bookImageUrl = freezed,
  }) {
    return _then(_$AdvsBasicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: freezed == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String?,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
      bookImageUrl: freezed == bookImageUrl
          ? _value.bookImageUrl
          : bookImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvsBasicImpl implements _AdvsBasic {
  const _$AdvsBasicImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.prodType,
      required this.prodId,
      this.bookImageUrl});

  factory _$AdvsBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvsBasicImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? prodType;
  @override
  final String prodId;
  @override
  final String? bookImageUrl;

  @override
  String toString() {
    return 'AdvsBasic(id: $id, title: $title, description: $description, prodType: $prodType, prodId: $prodId, bookImageUrl: $bookImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvsBasicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.prodType, prodType) ||
                other.prodType == prodType) &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.bookImageUrl, bookImageUrl) ||
                other.bookImageUrl == bookImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, prodType, prodId, bookImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvsBasicImplCopyWith<_$AdvsBasicImpl> get copyWith =>
      __$$AdvsBasicImplCopyWithImpl<_$AdvsBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvsBasicImplToJson(
      this,
    );
  }
}

abstract class _AdvsBasic implements AdvsBasic {
  const factory _AdvsBasic(
      {required final String id,
      required final String title,
      required final String description,
      required final String? prodType,
      required final String prodId,
      final String? bookImageUrl}) = _$AdvsBasicImpl;

  factory _AdvsBasic.fromJson(Map<String, dynamic> json) =
      _$AdvsBasicImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get prodType;
  @override
  String get prodId;
  @override
  String? get bookImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$AdvsBasicImplCopyWith<_$AdvsBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

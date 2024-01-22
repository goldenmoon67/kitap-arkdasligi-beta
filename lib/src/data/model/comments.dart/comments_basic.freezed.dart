// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentBasic _$CommentBasicFromJson(Map<String, dynamic> json) {
  return _CommentBasic.fromJson(json);
}

/// @nodoc
mixin _$CommentBasic {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get prodType => throw _privateConstructorUsedError;
  String get prodId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  BookUserProfile get relatedBook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentBasicCopyWith<CommentBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentBasicCopyWith<$Res> {
  factory $CommentBasicCopyWith(
          CommentBasic value, $Res Function(CommentBasic) then) =
      _$CommentBasicCopyWithImpl<$Res, CommentBasic>;
  @useResult
  $Res call(
      {String id,
      String text,
      String prodType,
      String prodId,
      String ownerId,
      BookUserProfile relatedBook});

  $BookUserProfileCopyWith<$Res> get relatedBook;
}

/// @nodoc
class _$CommentBasicCopyWithImpl<$Res, $Val extends CommentBasic>
    implements $CommentBasicCopyWith<$Res> {
  _$CommentBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? prodType = null,
    Object? prodId = null,
    Object? ownerId = null,
    Object? relatedBook = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedBook: null == relatedBook
          ? _value.relatedBook
          : relatedBook // ignore: cast_nullable_to_non_nullable
              as BookUserProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookUserProfileCopyWith<$Res> get relatedBook {
    return $BookUserProfileCopyWith<$Res>(_value.relatedBook, (value) {
      return _then(_value.copyWith(relatedBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentBasicImplCopyWith<$Res>
    implements $CommentBasicCopyWith<$Res> {
  factory _$$CommentBasicImplCopyWith(
          _$CommentBasicImpl value, $Res Function(_$CommentBasicImpl) then) =
      __$$CommentBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String prodType,
      String prodId,
      String ownerId,
      BookUserProfile relatedBook});

  @override
  $BookUserProfileCopyWith<$Res> get relatedBook;
}

/// @nodoc
class __$$CommentBasicImplCopyWithImpl<$Res>
    extends _$CommentBasicCopyWithImpl<$Res, _$CommentBasicImpl>
    implements _$$CommentBasicImplCopyWith<$Res> {
  __$$CommentBasicImplCopyWithImpl(
      _$CommentBasicImpl _value, $Res Function(_$CommentBasicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? prodType = null,
    Object? prodId = null,
    Object? ownerId = null,
    Object? relatedBook = null,
  }) {
    return _then(_$CommentBasicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedBook: null == relatedBook
          ? _value.relatedBook
          : relatedBook // ignore: cast_nullable_to_non_nullable
              as BookUserProfile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentBasicImpl implements _CommentBasic {
  const _$CommentBasicImpl(
      {required this.id,
      required this.text,
      required this.prodType,
      required this.prodId,
      required this.ownerId,
      required this.relatedBook});

  factory _$CommentBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentBasicImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String prodType;
  @override
  final String prodId;
  @override
  final String ownerId;
  @override
  final BookUserProfile relatedBook;

  @override
  String toString() {
    return 'CommentBasic(id: $id, text: $text, prodType: $prodType, prodId: $prodId, ownerId: $ownerId, relatedBook: $relatedBook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentBasicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.prodType, prodType) ||
                other.prodType == prodType) &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.relatedBook, relatedBook) ||
                other.relatedBook == relatedBook));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, prodType, prodId, ownerId, relatedBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentBasicImplCopyWith<_$CommentBasicImpl> get copyWith =>
      __$$CommentBasicImplCopyWithImpl<_$CommentBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentBasicImplToJson(
      this,
    );
  }
}

abstract class _CommentBasic implements CommentBasic {
  const factory _CommentBasic(
      {required final String id,
      required final String text,
      required final String prodType,
      required final String prodId,
      required final String ownerId,
      required final BookUserProfile relatedBook}) = _$CommentBasicImpl;

  factory _CommentBasic.fromJson(Map<String, dynamic> json) =
      _$CommentBasicImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get prodType;
  @override
  String get prodId;
  @override
  String get ownerId;
  @override
  BookUserProfile get relatedBook;
  @override
  @JsonKey(ignore: true)
  _$$CommentBasicImplCopyWith<_$CommentBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

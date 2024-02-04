// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) {
  return _CommentRequest.fromJson(json);
}

/// @nodoc
mixin _$CommentRequest {
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentRequestCopyWith<CommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentRequestCopyWith<$Res> {
  factory $CommentRequestCopyWith(
          CommentRequest value, $Res Function(CommentRequest) then) =
      _$CommentRequestCopyWithImpl<$Res, CommentRequest>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class _$CommentRequestCopyWithImpl<$Res, $Val extends CommentRequest>
    implements $CommentRequestCopyWith<$Res> {
  _$CommentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentRequestImplCopyWith<$Res>
    implements $CommentRequestCopyWith<$Res> {
  factory _$$CommentRequestImplCopyWith(_$CommentRequestImpl value,
          $Res Function(_$CommentRequestImpl) then) =
      __$$CommentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$CommentRequestImplCopyWithImpl<$Res>
    extends _$CommentRequestCopyWithImpl<$Res, _$CommentRequestImpl>
    implements _$$CommentRequestImplCopyWith<$Res> {
  __$$CommentRequestImplCopyWithImpl(
      _$CommentRequestImpl _value, $Res Function(_$CommentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$CommentRequestImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentRequestImpl implements _CommentRequest {
  const _$CommentRequestImpl({required this.comment});

  factory _$CommentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentRequestImplFromJson(json);

  @override
  final String comment;

  @override
  String toString() {
    return 'CommentRequest(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentRequestImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentRequestImplCopyWith<_$CommentRequestImpl> get copyWith =>
      __$$CommentRequestImplCopyWithImpl<_$CommentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentRequestImplToJson(
      this,
    );
  }
}

abstract class _CommentRequest implements CommentRequest {
  const factory _CommentRequest({required final String comment}) =
      _$CommentRequestImpl;

  factory _CommentRequest.fromJson(Map<String, dynamic> json) =
      _$CommentRequestImpl.fromJson;

  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$CommentRequestImplCopyWith<_$CommentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

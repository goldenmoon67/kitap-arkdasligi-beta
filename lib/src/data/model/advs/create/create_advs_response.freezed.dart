// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_advs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAdvsResponse _$CreateAdvsResponseFromJson(Map<String, dynamic> json) {
  return _CreateAdvsResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateAdvsResponse {
  String get advsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAdvsResponseCopyWith<CreateAdvsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAdvsResponseCopyWith<$Res> {
  factory $CreateAdvsResponseCopyWith(
          CreateAdvsResponse value, $Res Function(CreateAdvsResponse) then) =
      _$CreateAdvsResponseCopyWithImpl<$Res, CreateAdvsResponse>;
  @useResult
  $Res call({String advsId});
}

/// @nodoc
class _$CreateAdvsResponseCopyWithImpl<$Res, $Val extends CreateAdvsResponse>
    implements $CreateAdvsResponseCopyWith<$Res> {
  _$CreateAdvsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advsId = null,
  }) {
    return _then(_value.copyWith(
      advsId: null == advsId
          ? _value.advsId
          : advsId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAdvsResponseImplCopyWith<$Res>
    implements $CreateAdvsResponseCopyWith<$Res> {
  factory _$$CreateAdvsResponseImplCopyWith(_$CreateAdvsResponseImpl value,
          $Res Function(_$CreateAdvsResponseImpl) then) =
      __$$CreateAdvsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String advsId});
}

/// @nodoc
class __$$CreateAdvsResponseImplCopyWithImpl<$Res>
    extends _$CreateAdvsResponseCopyWithImpl<$Res, _$CreateAdvsResponseImpl>
    implements _$$CreateAdvsResponseImplCopyWith<$Res> {
  __$$CreateAdvsResponseImplCopyWithImpl(_$CreateAdvsResponseImpl _value,
      $Res Function(_$CreateAdvsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advsId = null,
  }) {
    return _then(_$CreateAdvsResponseImpl(
      advsId: null == advsId
          ? _value.advsId
          : advsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAdvsResponseImpl implements _CreateAdvsResponse {
  const _$CreateAdvsResponseImpl({required this.advsId});

  factory _$CreateAdvsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAdvsResponseImplFromJson(json);

  @override
  final String advsId;

  @override
  String toString() {
    return 'CreateAdvsResponse(advsId: $advsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvsResponseImpl &&
            (identical(other.advsId, advsId) || other.advsId == advsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, advsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdvsResponseImplCopyWith<_$CreateAdvsResponseImpl> get copyWith =>
      __$$CreateAdvsResponseImplCopyWithImpl<_$CreateAdvsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAdvsResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateAdvsResponse implements CreateAdvsResponse {
  const factory _CreateAdvsResponse({required final String advsId}) =
      _$CreateAdvsResponseImpl;

  factory _CreateAdvsResponse.fromJson(Map<String, dynamic> json) =
      _$CreateAdvsResponseImpl.fromJson;

  @override
  String get advsId;
  @override
  @JsonKey(ignore: true)
  _$$CreateAdvsResponseImplCopyWith<_$CreateAdvsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

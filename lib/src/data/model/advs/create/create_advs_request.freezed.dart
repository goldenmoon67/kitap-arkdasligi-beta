// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_advs_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAdvsRequest _$CreateAdvsRequestFromJson(Map<String, dynamic> json) {
  return _CreateAdvsRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAdvsRequest {
  String get description => throw _privateConstructorUsedError;
  String get prodType => throw _privateConstructorUsedError;
  String get prodId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAdvsRequestCopyWith<CreateAdvsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAdvsRequestCopyWith<$Res> {
  factory $CreateAdvsRequestCopyWith(
          CreateAdvsRequest value, $Res Function(CreateAdvsRequest) then) =
      _$CreateAdvsRequestCopyWithImpl<$Res, CreateAdvsRequest>;
  @useResult
  $Res call({String description, String prodType, String prodId});
}

/// @nodoc
class _$CreateAdvsRequestCopyWithImpl<$Res, $Val extends CreateAdvsRequest>
    implements $CreateAdvsRequestCopyWith<$Res> {
  _$CreateAdvsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? prodType = null,
    Object? prodId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAdvsRequestImplCopyWith<$Res>
    implements $CreateAdvsRequestCopyWith<$Res> {
  factory _$$CreateAdvsRequestImplCopyWith(_$CreateAdvsRequestImpl value,
          $Res Function(_$CreateAdvsRequestImpl) then) =
      __$$CreateAdvsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String prodType, String prodId});
}

/// @nodoc
class __$$CreateAdvsRequestImplCopyWithImpl<$Res>
    extends _$CreateAdvsRequestCopyWithImpl<$Res, _$CreateAdvsRequestImpl>
    implements _$$CreateAdvsRequestImplCopyWith<$Res> {
  __$$CreateAdvsRequestImplCopyWithImpl(_$CreateAdvsRequestImpl _value,
      $Res Function(_$CreateAdvsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? prodType = null,
    Object? prodId = null,
  }) {
    return _then(_$CreateAdvsRequestImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAdvsRequestImpl implements _CreateAdvsRequest {
  const _$CreateAdvsRequestImpl(
      {required this.description,
      required this.prodType,
      required this.prodId});

  factory _$CreateAdvsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAdvsRequestImplFromJson(json);

  @override
  final String description;
  @override
  final String prodType;
  @override
  final String prodId;

  @override
  String toString() {
    return 'CreateAdvsRequest(description: $description, prodType: $prodType, prodId: $prodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvsRequestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.prodType, prodType) ||
                other.prodType == prodType) &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, prodType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdvsRequestImplCopyWith<_$CreateAdvsRequestImpl> get copyWith =>
      __$$CreateAdvsRequestImplCopyWithImpl<_$CreateAdvsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAdvsRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateAdvsRequest implements CreateAdvsRequest {
  const factory _CreateAdvsRequest(
      {required final String description,
      required final String prodType,
      required final String prodId}) = _$CreateAdvsRequestImpl;

  factory _CreateAdvsRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAdvsRequestImpl.fromJson;

  @override
  String get description;
  @override
  String get prodType;
  @override
  String get prodId;
  @override
  @JsonKey(ignore: true)
  _$$CreateAdvsRequestImplCopyWith<_$CreateAdvsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

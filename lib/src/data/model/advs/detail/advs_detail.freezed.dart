// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advs_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvsDetail _$AdvsDetailFromJson(Map<String, dynamic> json) {
  return _AdvsDetail.fromJson(json);
}

/// @nodoc
mixin _$AdvsDetail {
  List<dynamic>? get comments => throw _privateConstructorUsedError;
  List<dynamic>? get acceptedPrivateConv => throw _privateConstructorUsedError;
  List<dynamic>? get privateComments => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  BasicUser get ownerDetail => throw _privateConstructorUsedError;
  String get prodType => throw _privateConstructorUsedError;
  BookUserProfile get bookDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvsDetailCopyWith<AdvsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvsDetailCopyWith<$Res> {
  factory $AdvsDetailCopyWith(
          AdvsDetail value, $Res Function(AdvsDetail) then) =
      _$AdvsDetailCopyWithImpl<$Res, AdvsDetail>;
  @useResult
  $Res call(
      {List<dynamic>? comments,
      List<dynamic>? acceptedPrivateConv,
      List<dynamic>? privateComments,
      @JsonKey(name: "_id") String id,
      String title,
      String description,
      BasicUser ownerDetail,
      String prodType,
      BookUserProfile bookDetails});

  $BasicUserCopyWith<$Res> get ownerDetail;
  $BookUserProfileCopyWith<$Res> get bookDetails;
}

/// @nodoc
class _$AdvsDetailCopyWithImpl<$Res, $Val extends AdvsDetail>
    implements $AdvsDetailCopyWith<$Res> {
  _$AdvsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? acceptedPrivateConv = freezed,
    Object? privateComments = freezed,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? ownerDetail = null,
    Object? prodType = null,
    Object? bookDetails = null,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      acceptedPrivateConv: freezed == acceptedPrivateConv
          ? _value.acceptedPrivateConv
          : acceptedPrivateConv // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      privateComments: freezed == privateComments
          ? _value.privateComments
          : privateComments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      ownerDetail: null == ownerDetail
          ? _value.ownerDetail
          : ownerDetail // ignore: cast_nullable_to_non_nullable
              as BasicUser,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      bookDetails: null == bookDetails
          ? _value.bookDetails
          : bookDetails // ignore: cast_nullable_to_non_nullable
              as BookUserProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicUserCopyWith<$Res> get ownerDetail {
    return $BasicUserCopyWith<$Res>(_value.ownerDetail, (value) {
      return _then(_value.copyWith(ownerDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookUserProfileCopyWith<$Res> get bookDetails {
    return $BookUserProfileCopyWith<$Res>(_value.bookDetails, (value) {
      return _then(_value.copyWith(bookDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvsDetailImplCopyWith<$Res>
    implements $AdvsDetailCopyWith<$Res> {
  factory _$$AdvsDetailImplCopyWith(
          _$AdvsDetailImpl value, $Res Function(_$AdvsDetailImpl) then) =
      __$$AdvsDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? comments,
      List<dynamic>? acceptedPrivateConv,
      List<dynamic>? privateComments,
      @JsonKey(name: "_id") String id,
      String title,
      String description,
      BasicUser ownerDetail,
      String prodType,
      BookUserProfile bookDetails});

  @override
  $BasicUserCopyWith<$Res> get ownerDetail;
  @override
  $BookUserProfileCopyWith<$Res> get bookDetails;
}

/// @nodoc
class __$$AdvsDetailImplCopyWithImpl<$Res>
    extends _$AdvsDetailCopyWithImpl<$Res, _$AdvsDetailImpl>
    implements _$$AdvsDetailImplCopyWith<$Res> {
  __$$AdvsDetailImplCopyWithImpl(
      _$AdvsDetailImpl _value, $Res Function(_$AdvsDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? acceptedPrivateConv = freezed,
    Object? privateComments = freezed,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? ownerDetail = null,
    Object? prodType = null,
    Object? bookDetails = null,
  }) {
    return _then(_$AdvsDetailImpl(
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      acceptedPrivateConv: freezed == acceptedPrivateConv
          ? _value._acceptedPrivateConv
          : acceptedPrivateConv // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      privateComments: freezed == privateComments
          ? _value._privateComments
          : privateComments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      ownerDetail: null == ownerDetail
          ? _value.ownerDetail
          : ownerDetail // ignore: cast_nullable_to_non_nullable
              as BasicUser,
      prodType: null == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as String,
      bookDetails: null == bookDetails
          ? _value.bookDetails
          : bookDetails // ignore: cast_nullable_to_non_nullable
              as BookUserProfile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvsDetailImpl implements _AdvsDetail {
  const _$AdvsDetailImpl(
      {required final List<dynamic>? comments,
      required final List<dynamic>? acceptedPrivateConv,
      required final List<dynamic>? privateComments,
      @JsonKey(name: "_id") required this.id,
      required this.title,
      required this.description,
      required this.ownerDetail,
      required this.prodType,
      required this.bookDetails})
      : _comments = comments,
        _acceptedPrivateConv = acceptedPrivateConv,
        _privateComments = privateComments;

  factory _$AdvsDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvsDetailImplFromJson(json);

  final List<dynamic>? _comments;
  @override
  List<dynamic>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _acceptedPrivateConv;
  @override
  List<dynamic>? get acceptedPrivateConv {
    final value = _acceptedPrivateConv;
    if (value == null) return null;
    if (_acceptedPrivateConv is EqualUnmodifiableListView)
      return _acceptedPrivateConv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _privateComments;
  @override
  List<dynamic>? get privateComments {
    final value = _privateComments;
    if (value == null) return null;
    if (_privateComments is EqualUnmodifiableListView) return _privateComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final BasicUser ownerDetail;
  @override
  final String prodType;
  @override
  final BookUserProfile bookDetails;

  @override
  String toString() {
    return 'AdvsDetail(comments: $comments, acceptedPrivateConv: $acceptedPrivateConv, privateComments: $privateComments, id: $id, title: $title, description: $description, ownerDetail: $ownerDetail, prodType: $prodType, bookDetails: $bookDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvsDetailImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._acceptedPrivateConv, _acceptedPrivateConv) &&
            const DeepCollectionEquality()
                .equals(other._privateComments, _privateComments) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.ownerDetail, ownerDetail) ||
                other.ownerDetail == ownerDetail) &&
            (identical(other.prodType, prodType) ||
                other.prodType == prodType) &&
            (identical(other.bookDetails, bookDetails) ||
                other.bookDetails == bookDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_acceptedPrivateConv),
      const DeepCollectionEquality().hash(_privateComments),
      id,
      title,
      description,
      ownerDetail,
      prodType,
      bookDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvsDetailImplCopyWith<_$AdvsDetailImpl> get copyWith =>
      __$$AdvsDetailImplCopyWithImpl<_$AdvsDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvsDetailImplToJson(
      this,
    );
  }
}

abstract class _AdvsDetail implements AdvsDetail {
  const factory _AdvsDetail(
      {required final List<dynamic>? comments,
      required final List<dynamic>? acceptedPrivateConv,
      required final List<dynamic>? privateComments,
      @JsonKey(name: "_id") required final String id,
      required final String title,
      required final String description,
      required final BasicUser ownerDetail,
      required final String prodType,
      required final BookUserProfile bookDetails}) = _$AdvsDetailImpl;

  factory _AdvsDetail.fromJson(Map<String, dynamic> json) =
      _$AdvsDetailImpl.fromJson;

  @override
  List<dynamic>? get comments;
  @override
  List<dynamic>? get acceptedPrivateConv;
  @override
  List<dynamic>? get privateComments;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  BasicUser get ownerDetail;
  @override
  String get prodType;
  @override
  BookUserProfile get bookDetails;
  @override
  @JsonKey(ignore: true)
  _$$AdvsDetailImplCopyWith<_$AdvsDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

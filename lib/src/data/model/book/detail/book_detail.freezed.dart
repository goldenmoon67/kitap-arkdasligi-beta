// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return _BookDetail.fromJson(json);
}

/// @nodoc
mixin _$BookDetail {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  List<String?>? get categories => throw _privateConstructorUsedError;
  List<BasicUser?>? get readByUsers => throw _privateConstructorUsedError;
  List<String?>? get commentDetails => throw _privateConstructorUsedError;
  int get rates => throw _privateConstructorUsedError;
  String? get orginalName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailCopyWith<BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailCopyWith<$Res> {
  factory $BookDetailCopyWith(
          BookDetail value, $Res Function(BookDetail) then) =
      _$BookDetailCopyWithImpl<$Res, BookDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String? description,
      String? imageUrl,
      Author author,
      int pageCount,
      List<String?>? categories,
      List<BasicUser?>? readByUsers,
      List<String?>? commentDetails,
      int rates,
      String? orginalName});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$BookDetailCopyWithImpl<$Res, $Val extends BookDetail>
    implements $BookDetailCopyWith<$Res> {
  _$BookDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? author = null,
    Object? pageCount = null,
    Object? categories = freezed,
    Object? readByUsers = freezed,
    Object? commentDetails = freezed,
    Object? rates = null,
    Object? orginalName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      readByUsers: freezed == readByUsers
          ? _value.readByUsers
          : readByUsers // ignore: cast_nullable_to_non_nullable
              as List<BasicUser?>?,
      commentDetails: freezed == commentDetails
          ? _value.commentDetails
          : commentDetails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as int,
      orginalName: freezed == orginalName
          ? _value.orginalName
          : orginalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookDetailImplCopyWith<$Res>
    implements $BookDetailCopyWith<$Res> {
  factory _$$BookDetailImplCopyWith(
          _$BookDetailImpl value, $Res Function(_$BookDetailImpl) then) =
      __$$BookDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String? description,
      String? imageUrl,
      Author author,
      int pageCount,
      List<String?>? categories,
      List<BasicUser?>? readByUsers,
      List<String?>? commentDetails,
      int rates,
      String? orginalName});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$BookDetailImplCopyWithImpl<$Res>
    extends _$BookDetailCopyWithImpl<$Res, _$BookDetailImpl>
    implements _$$BookDetailImplCopyWith<$Res> {
  __$$BookDetailImplCopyWithImpl(
      _$BookDetailImpl _value, $Res Function(_$BookDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? author = null,
    Object? pageCount = null,
    Object? categories = freezed,
    Object? readByUsers = freezed,
    Object? commentDetails = freezed,
    Object? rates = null,
    Object? orginalName = freezed,
  }) {
    return _then(_$BookDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      readByUsers: freezed == readByUsers
          ? _value._readByUsers
          : readByUsers // ignore: cast_nullable_to_non_nullable
              as List<BasicUser?>?,
      commentDetails: freezed == commentDetails
          ? _value._commentDetails
          : commentDetails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as int,
      orginalName: freezed == orginalName
          ? _value.orginalName
          : orginalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDetailImpl implements _BookDetail {
  const _$BookDetailImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      this.description,
      this.imageUrl,
      required this.author,
      required this.pageCount,
      required final List<String?>? categories,
      required final List<BasicUser?>? readByUsers,
      required final List<String?>? commentDetails,
      this.rates = 0,
      this.orginalName})
      : _categories = categories,
        _readByUsers = readByUsers,
        _commentDetails = commentDetails;

  factory _$BookDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDetailImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final Author author;
  @override
  final int pageCount;
  final List<String?>? _categories;
  @override
  List<String?>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BasicUser?>? _readByUsers;
  @override
  List<BasicUser?>? get readByUsers {
    final value = _readByUsers;
    if (value == null) return null;
    if (_readByUsers is EqualUnmodifiableListView) return _readByUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _commentDetails;
  @override
  List<String?>? get commentDetails {
    final value = _commentDetails;
    if (value == null) return null;
    if (_commentDetails is EqualUnmodifiableListView) return _commentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int rates;
  @override
  final String? orginalName;

  @override
  String toString() {
    return 'BookDetail(id: $id, name: $name, description: $description, imageUrl: $imageUrl, author: $author, pageCount: $pageCount, categories: $categories, readByUsers: $readByUsers, commentDetails: $commentDetails, rates: $rates, orginalName: $orginalName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._readByUsers, _readByUsers) &&
            const DeepCollectionEquality()
                .equals(other._commentDetails, _commentDetails) &&
            (identical(other.rates, rates) || other.rates == rates) &&
            (identical(other.orginalName, orginalName) ||
                other.orginalName == orginalName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      author,
      pageCount,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_readByUsers),
      const DeepCollectionEquality().hash(_commentDetails),
      rates,
      orginalName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailImplCopyWith<_$BookDetailImpl> get copyWith =>
      __$$BookDetailImplCopyWithImpl<_$BookDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDetailImplToJson(
      this,
    );
  }
}

abstract class _BookDetail implements BookDetail {
  const factory _BookDetail(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      final String? description,
      final String? imageUrl,
      required final Author author,
      required final int pageCount,
      required final List<String?>? categories,
      required final List<BasicUser?>? readByUsers,
      required final List<String?>? commentDetails,
      final int rates,
      final String? orginalName}) = _$BookDetailImpl;

  factory _BookDetail.fromJson(Map<String, dynamic> json) =
      _$BookDetailImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  Author get author;
  @override
  int get pageCount;
  @override
  List<String?>? get categories;
  @override
  List<BasicUser?>? get readByUsers;
  @override
  List<String?>? get commentDetails;
  @override
  int get rates;
  @override
  String? get orginalName;
  @override
  @JsonKey(ignore: true)
  _$$BookDetailImplCopyWith<_$BookDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

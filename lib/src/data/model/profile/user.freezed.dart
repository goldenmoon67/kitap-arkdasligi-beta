// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get userId => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<dynamic> get friends => throw _privateConstructorUsedError;
  List<String> get books => throw _privateConstructorUsedError;
  List<dynamic> get movies => throw _privateConstructorUsedError;
  List<dynamic> get series => throw _privateConstructorUsedError;
  List<dynamic> get advertisements => throw _privateConstructorUsedError;
  int get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String userId,
      String nickName,
      String email,
      List<dynamic> friends,
      List<String> books,
      List<dynamic> movies,
      List<dynamic> series,
      List<dynamic> advertisements,
      int rates});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickName = null,
    Object? email = null,
    Object? friends = null,
    Object? books = null,
    Object? movies = null,
    Object? series = null,
    Object? advertisements = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      advertisements: null == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String nickName,
      String email,
      List<dynamic> friends,
      List<String> books,
      List<dynamic> movies,
      List<dynamic> series,
      List<dynamic> advertisements,
      int rates});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickName = null,
    Object? email = null,
    Object? friends = null,
    Object? books = null,
    Object? movies = null,
    Object? series = null,
    Object? advertisements = null,
    Object? rates = null,
  }) {
    return _then(_$UserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      advertisements: null == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.userId,
      required this.nickName,
      required this.email,
      required final List<dynamic> friends,
      required final List<String> books,
      required final List<dynamic> movies,
      required final List<dynamic> series,
      required final List<dynamic> advertisements,
      required this.rates})
      : _friends = friends,
        _books = books,
        _movies = movies,
        _series = series,
        _advertisements = advertisements;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String userId;
  @override
  final String nickName;
  @override
  final String email;
  final List<dynamic> _friends;
  @override
  List<dynamic> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<String> _books;
  @override
  List<String> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<dynamic> _movies;
  @override
  List<dynamic> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  final List<dynamic> _series;
  @override
  List<dynamic> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  final List<dynamic> _advertisements;
  @override
  List<dynamic> get advertisements {
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisements);
  }

  @override
  final int rates;

  @override
  String toString() {
    return 'User(userId: $userId, nickName: $nickName, email: $email, friends: $friends, books: $books, movies: $movies, series: $series, advertisements: $advertisements, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            (identical(other.rates, rates) || other.rates == rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      nickName,
      email,
      const DeepCollectionEquality().hash(_friends),
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_series),
      const DeepCollectionEquality().hash(_advertisements),
      rates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String userId,
      required final String nickName,
      required final String email,
      required final List<dynamic> friends,
      required final List<String> books,
      required final List<dynamic> movies,
      required final List<dynamic> series,
      required final List<dynamic> advertisements,
      required final int rates}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get userId;
  @override
  String get nickName;
  @override
  String get email;
  @override
  List<dynamic> get friends;
  @override
  List<String> get books;
  @override
  List<dynamic> get movies;
  @override
  List<dynamic> get series;
  @override
  List<dynamic> get advertisements;
  @override
  int get rates;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

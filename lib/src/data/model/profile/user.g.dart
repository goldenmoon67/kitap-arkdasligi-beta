// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userId: json['userId'] as String,
      nickName: json['nickName'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String?,
      friends: json['friends'] as List<dynamic>,
      books: (json['books'] as List<dynamic>)
          .map((e) => BookUserProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      movies: json['movies'] as List<dynamic>,
      series: json['series'] as List<dynamic>,
      advertisements: (json['advertisements'] as List<dynamic>)
          .map((e) => AdvsBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
      rates: json['rates'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickName': instance.nickName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'friends': instance.friends,
      'books': instance.books,
      'movies': instance.movies,
      'series': instance.series,
      'advertisements': instance.advertisements,
      'comments': instance.comments,
      'rates': instance.rates,
    };

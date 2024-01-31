// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDetailImpl _$$BookDetailImplFromJson(Map<String, dynamic> json) =>
    _$BookDetailImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      pageCount: json['pageCount'] as int,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      readByUsers: (json['readByUsers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentDetails: (json['commentDetails'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isReadByUser: json['isReadByUser'] as bool,
      rates: json['rates'] as int? ?? 0,
      orginalName: json['orginalName'] as String?,
    );

Map<String, dynamic> _$$BookDetailImplToJson(_$BookDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'pageCount': instance.pageCount,
      'categories': instance.categories,
      'readByUsers': instance.readByUsers,
      'commentDetails': instance.commentDetails,
      'isReadByUser': instance.isReadByUser,
      'rates': instance.rates,
      'orginalName': instance.orginalName,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingModel<T> _$PagingModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagingModel<T>(
      json['totalDocs'] as int,
      json['limit'] as int,
      json['totalPages'] as int,
      json['page'] as int,
      json['pagingCounter'] as int,
      json['hasPrevPage'] as bool,
      json['hasNextPage'] as bool,
      json['prevPage'],
      json['nextPage'],
      docs:
          (json['docs'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
    );

Map<String, dynamic> _$PagingModelToJson<T>(
  PagingModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'docs': instance.docs.map(toJsonT).toList(),
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
      'prevPage': instance.prevPage,
      'nextPage': instance.nextPage,
    };

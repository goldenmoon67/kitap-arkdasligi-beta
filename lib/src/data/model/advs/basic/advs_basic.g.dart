// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advs_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvsBasicImpl _$$AdvsBasicImplFromJson(Map<String, dynamic> json) =>
    _$AdvsBasicImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      prodType: json['prodType'] as String?,
      prodId: json['prodId'] as String,
      bookImageUrl: json['bookImageUrl'] as String?,
    );

Map<String, dynamic> _$$AdvsBasicImplToJson(_$AdvsBasicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'prodType': instance.prodType,
      'prodId': instance.prodId,
      'bookImageUrl': instance.bookImageUrl,
    };

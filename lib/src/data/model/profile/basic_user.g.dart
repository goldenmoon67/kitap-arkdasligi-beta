// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicUserImpl _$$BasicUserImplFromJson(Map<String, dynamic> json) =>
    _$BasicUserImpl(
      userId: json['userId'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$BasicUserImplToJson(_$BasicUserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

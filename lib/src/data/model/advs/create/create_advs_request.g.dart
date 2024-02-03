// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_advs_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAdvsRequestImpl _$$CreateAdvsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAdvsRequestImpl(
      description: json['description'] as String,
      prodType: json['prodType'] as String,
      prodId: json['prodId'] as String,
    );

Map<String, dynamic> _$$CreateAdvsRequestImplToJson(
        _$CreateAdvsRequestImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'prodType': instance.prodType,
      'prodId': instance.prodId,
    };

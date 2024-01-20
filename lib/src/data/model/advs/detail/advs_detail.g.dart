// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advs_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvsDetailImpl _$$AdvsDetailImplFromJson(Map<String, dynamic> json) =>
    _$AdvsDetailImpl(
      comments: json['comments'] as List<dynamic>,
      acceptedPrivateConv: json['acceptedPrivateConv'] as List<dynamic>,
      privateComments: json['privateComments'] as List<dynamic>,
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      userId: json['userId'] as String,
      prodType: json['prodType'] as String,
      prodId: json['prodId'] as String,
    );

Map<String, dynamic> _$$AdvsDetailImplToJson(_$AdvsDetailImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'acceptedPrivateConv': instance.acceptedPrivateConv,
      'privateComments': instance.privateComments,
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'userId': instance.userId,
      'prodType': instance.prodType,
      'prodId': instance.prodId,
    };

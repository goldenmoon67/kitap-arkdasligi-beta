// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advs_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvsDetailImpl _$$AdvsDetailImplFromJson(Map<String, dynamic> json) =>
    _$AdvsDetailImpl(
      comments: json['comments'] as List<dynamic>?,
      acceptedPrivateConv: json['acceptedPrivateConv'] as List<dynamic>?,
      privateComments: json['privateComments'] as List<dynamic>?,
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      ownerDetail:
          BasicUser.fromJson(json['ownerDetail'] as Map<String, dynamic>),
      prodType: json['prodType'] as String,
      bookDetails:
          BookUserProfile.fromJson(json['bookDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdvsDetailImplToJson(_$AdvsDetailImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'acceptedPrivateConv': instance.acceptedPrivateConv,
      'privateComments': instance.privateComments,
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'ownerDetail': instance.ownerDetail,
      'prodType': instance.prodType,
      'bookDetails': instance.bookDetails,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentBasicImpl _$$CommentBasicImplFromJson(Map<String, dynamic> json) =>
    _$CommentBasicImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      prodType: json['prodType'] as String,
      prodId: json['prodId'] as String,
      ownerId: json['ownerId'] as String?,
      relatedBook: json['relatedBook'] == null
          ? null
          : BookUserProfile.fromJson(
              json['relatedBook'] as Map<String, dynamic>),
      ownerDetails: json['ownerDetails'] == null
          ? null
          : BasicUser.fromJson(json['ownerDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentBasicImplToJson(_$CommentBasicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'prodType': instance.prodType,
      'prodId': instance.prodId,
      'ownerId': instance.ownerId,
      'relatedBook': instance.relatedBook,
      'ownerDetails': instance.ownerDetails,
    };

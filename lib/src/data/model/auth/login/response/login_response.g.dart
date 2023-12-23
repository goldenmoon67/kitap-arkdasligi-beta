// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      accessToken: json['accessToken'] as String,
      expiresIn: json['expiresIn'] as int,
      refreshToken: json['refreshToken'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthorizationResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationResponse _$AuthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return AuthorizationResponse(
    json['access_token'] as String,
    json['expires_in'] as int,
    json['token_type'] as String,
    json['scope'] as String,
  );
}

Map<String, dynamic> _$AuthorizationResponseToJson(
        AuthorizationResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'scope': instance.scope,
    };

import 'package:json_annotation/json_annotation.dart';

part 'AuthorizationResponse.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class AuthorizationResponse {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'expires_in')
  int expiresIn;
  @JsonKey(name: 'token_type')
  String tokenType;
  String scope;
  AuthorizationResponse(
      this.accessToken, this.expiresIn, this.tokenType, this.scope);

  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorizationResponseToJson(this);
}

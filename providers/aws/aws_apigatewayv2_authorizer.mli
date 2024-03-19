(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type jwt_configuration

val jwt_configuration :
  ?audience:string prop list ->
  ?issuer:string prop ->
  unit ->
  jwt_configuration

type aws_apigatewayv2_authorizer

val aws_apigatewayv2_authorizer :
  ?authorizer_credentials_arn:string prop ->
  ?authorizer_payload_format_version:string prop ->
  ?authorizer_result_ttl_in_seconds:float prop ->
  ?authorizer_uri:string prop ->
  ?enable_simple_responses:bool prop ->
  ?id:string prop ->
  ?identity_sources:string prop list ->
  api_id:string prop ->
  authorizer_type:string prop ->
  name:string prop ->
  jwt_configuration:jwt_configuration list ->
  unit ->
  aws_apigatewayv2_authorizer

val yojson_of_aws_apigatewayv2_authorizer :
  aws_apigatewayv2_authorizer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  authorizer_credentials_arn : string prop;
  authorizer_payload_format_version : string prop;
  authorizer_result_ttl_in_seconds : float prop;
  authorizer_type : string prop;
  authorizer_uri : string prop;
  enable_simple_responses : bool prop;
  id : string prop;
  identity_sources : string list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorizer_credentials_arn:string prop ->
  ?authorizer_payload_format_version:string prop ->
  ?authorizer_result_ttl_in_seconds:float prop ->
  ?authorizer_uri:string prop ->
  ?enable_simple_responses:bool prop ->
  ?id:string prop ->
  ?identity_sources:string prop list ->
  api_id:string prop ->
  authorizer_type:string prop ->
  name:string prop ->
  jwt_configuration:jwt_configuration list ->
  string ->
  t

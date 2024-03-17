(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_authorizer__jwt_configuration
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
  jwt_configuration:
    aws_apigatewayv2_authorizer__jwt_configuration list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_authorizer__jwt_configuration
type aws_apigatewayv2_authorizer

val aws_apigatewayv2_authorizer :
  ?authorizer_credentials_arn:string ->
  ?authorizer_payload_format_version:string ->
  ?authorizer_uri:string ->
  ?enable_simple_responses:bool ->
  ?identity_sources:string list ->
  api_id:string ->
  authorizer_type:string ->
  name:string ->
  jwt_configuration:
    aws_apigatewayv2_authorizer__jwt_configuration list ->
  string ->
  unit

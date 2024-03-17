(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_authorizer

val aws_api_gateway_authorizer :
  ?authorizer_credentials:string ->
  ?authorizer_result_ttl_in_seconds:float ->
  ?authorizer_uri:string ->
  ?identity_source:string ->
  ?identity_validation_expression:string ->
  ?provider_arns:string list ->
  ?type_:string ->
  name:string ->
  rest_api_id:string ->
  string ->
  unit

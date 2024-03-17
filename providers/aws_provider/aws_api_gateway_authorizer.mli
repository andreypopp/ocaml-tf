(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_authorizer

type t = private {
  arn : string prop;
  authorizer_credentials : string prop;
  authorizer_result_ttl_in_seconds : float prop;
  authorizer_uri : string prop;
  id : string prop;
  identity_source : string prop;
  identity_validation_expression : string prop;
  name : string prop;
  provider_arns : string list prop;
  rest_api_id : string prop;
  type_ : string prop;
}

val aws_api_gateway_authorizer :
  ?authorizer_credentials:string prop ->
  ?authorizer_result_ttl_in_seconds:float prop ->
  ?authorizer_uri:string prop ->
  ?id:string prop ->
  ?identity_source:string prop ->
  ?identity_validation_expression:string prop ->
  ?provider_arns:string prop list ->
  ?type_:string prop ->
  name:string prop ->
  rest_api_id:string prop ->
  string ->
  t

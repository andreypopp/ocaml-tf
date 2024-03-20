(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_authorizer

val aws_api_gateway_authorizer :
  ?id:string prop ->
  authorizer_id:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_authorizer

val yojson_of_aws_api_gateway_authorizer :
  aws_api_gateway_authorizer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  authorizer_credentials : string prop;
  authorizer_id : string prop;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  authorizer_id:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  authorizer_id:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource

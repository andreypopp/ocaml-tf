(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_api_mapping

val aws_apigatewayv2_api_mapping :
  ?api_mapping_key:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  stage:string prop ->
  unit ->
  aws_apigatewayv2_api_mapping

val yojson_of_aws_apigatewayv2_api_mapping :
  aws_apigatewayv2_api_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  api_mapping_key : string prop;
  domain_name : string prop;
  id : string prop;
  stage : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_mapping_key:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  stage:string prop ->
  string ->
  t

val make :
  ?api_mapping_key:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  stage:string prop ->
  string ->
  t Tf_core.resource

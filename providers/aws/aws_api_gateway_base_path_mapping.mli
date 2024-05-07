(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_base_path_mapping

val aws_api_gateway_base_path_mapping :
  ?base_path:string prop ->
  ?id:string prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  unit ->
  aws_api_gateway_base_path_mapping

val yojson_of_aws_api_gateway_base_path_mapping :
  aws_api_gateway_base_path_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  base_path : string prop;
  domain_name : string prop;
  id : string prop;
  stage_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_path:string prop ->
  ?id:string prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?base_path:string prop ->
  ?id:string prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource

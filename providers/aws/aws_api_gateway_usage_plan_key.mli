(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_usage_plan_key

val aws_api_gateway_usage_plan_key :
  ?id:string prop ->
  key_id:string prop ->
  key_type:string prop ->
  usage_plan_id:string prop ->
  unit ->
  aws_api_gateway_usage_plan_key

val yojson_of_aws_api_gateway_usage_plan_key :
  aws_api_gateway_usage_plan_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key_id : string prop;
  key_type : string prop;
  name : string prop;
  usage_plan_id : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_id:string prop ->
  key_type:string prop ->
  usage_plan_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key_id:string prop ->
  key_type:string prop ->
  usage_plan_id:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type canary_settings

val canary_settings :
  ?percent_traffic:float prop ->
  ?stage_variable_overrides:(string * string prop) list ->
  ?use_stage_cache:bool prop ->
  unit ->
  canary_settings

type aws_api_gateway_deployment

val aws_api_gateway_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?stage_description:string prop ->
  ?stage_name:string prop ->
  ?triggers:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?canary_settings:canary_settings list ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_deployment

val yojson_of_aws_api_gateway_deployment :
  aws_api_gateway_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_date : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_description : string prop;
  stage_name : string prop;
  triggers : (string * string) list prop;
  variables : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?stage_description:string prop ->
  ?stage_name:string prop ->
  ?triggers:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?canary_settings:canary_settings list ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?stage_description:string prop ->
  ?stage_name:string prop ->
  ?triggers:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?canary_settings:canary_settings list ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource

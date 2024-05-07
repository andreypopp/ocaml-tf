(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type api_stages__throttle

val api_stages__throttle :
  ?burst_limit:float prop ->
  ?rate_limit:float prop ->
  path:string prop ->
  unit ->
  api_stages__throttle

type api_stages

val api_stages :
  api_id:string prop ->
  stage:string prop ->
  throttle:api_stages__throttle list ->
  unit ->
  api_stages

type quota_settings

val quota_settings :
  ?offset:float prop ->
  limit:float prop ->
  period:string prop ->
  unit ->
  quota_settings

type throttle_settings

val throttle_settings :
  ?burst_limit:float prop ->
  ?rate_limit:float prop ->
  unit ->
  throttle_settings

type aws_api_gateway_usage_plan

val aws_api_gateway_usage_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?product_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?quota_settings:quota_settings list ->
  ?throttle_settings:throttle_settings list ->
  name:string prop ->
  api_stages:api_stages list ->
  unit ->
  aws_api_gateway_usage_plan

val yojson_of_aws_api_gateway_usage_plan :
  aws_api_gateway_usage_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  product_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?product_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?quota_settings:quota_settings list ->
  ?throttle_settings:throttle_settings list ->
  name:string prop ->
  api_stages:api_stages list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?product_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?quota_settings:quota_settings list ->
  ?throttle_settings:throttle_settings list ->
  name:string prop ->
  api_stages:api_stages list ->
  string ->
  t Tf_core.resource

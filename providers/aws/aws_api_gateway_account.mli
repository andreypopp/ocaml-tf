(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type throttle_settings = {
  burst_limit : float prop;  (** burst_limit *)
  rate_limit : float prop;  (** rate_limit *)
}

[@@@deriving.end]

type aws_api_gateway_account

val aws_api_gateway_account :
  ?cloudwatch_role_arn:string prop ->
  ?id:string prop ->
  unit ->
  aws_api_gateway_account

val yojson_of_aws_api_gateway_account :
  aws_api_gateway_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_key_version : string prop;
  cloudwatch_role_arn : string prop;
  features : string list prop;
  id : string prop;
  throttle_settings : throttle_settings list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cloudwatch_role_arn:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?cloudwatch_role_arn:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource

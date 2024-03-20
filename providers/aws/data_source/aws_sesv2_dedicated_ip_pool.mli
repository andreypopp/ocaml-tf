(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dedicated_ips = {
  ip : string prop;  (** ip *)
  warmup_percentage : float prop;  (** warmup_percentage *)
  warmup_status : string prop;  (** warmup_status *)
}

type aws_sesv2_dedicated_ip_pool

val aws_sesv2_dedicated_ip_pool :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_name:string prop ->
  unit ->
  aws_sesv2_dedicated_ip_pool

val yojson_of_aws_sesv2_dedicated_ip_pool :
  aws_sesv2_dedicated_ip_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  dedicated_ips : dedicated_ips list prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_name:string prop ->
  string ->
  t Tf_core.resource

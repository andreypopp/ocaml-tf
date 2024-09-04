(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_sesv2_dedicated_ip_pool

val aws_sesv2_dedicated_ip_pool :
  ?id:string prop ->
  ?scaling_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  pool_name:string prop ->
  unit ->
  aws_sesv2_dedicated_ip_pool

val yojson_of_aws_sesv2_dedicated_ip_pool :
  aws_sesv2_dedicated_ip_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?scaling_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  pool_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?scaling_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  pool_name:string prop ->
  string ->
  t Tf_core.resource

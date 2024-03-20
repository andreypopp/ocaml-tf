(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type aws_iot_policy

val aws_iot_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy:string prop ->
  unit ->
  aws_iot_policy

val yojson_of_aws_iot_policy : aws_iot_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_version_id : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ssoadmin_permission_set_inline_policy

val aws_ssoadmin_permission_set_inline_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  inline_policy:string prop ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  unit ->
  aws_ssoadmin_permission_set_inline_policy

val yojson_of_aws_ssoadmin_permission_set_inline_policy :
  aws_ssoadmin_permission_set_inline_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  inline_policy:string prop ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  inline_policy:string prop ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  string ->
  t Tf_core.resource

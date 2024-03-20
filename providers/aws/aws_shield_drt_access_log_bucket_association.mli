(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_shield_drt_access_log_bucket_association

val aws_shield_drt_access_log_bucket_association :
  ?timeouts:timeouts ->
  log_bucket:string prop ->
  role_arn_association_id:string prop ->
  unit ->
  aws_shield_drt_access_log_bucket_association

val yojson_of_aws_shield_drt_access_log_bucket_association :
  aws_shield_drt_access_log_bucket_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  log_bucket : string prop;
  role_arn_association_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  log_bucket:string prop ->
  role_arn_association_id:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  log_bucket:string prop ->
  role_arn_association_id:string prop ->
  string ->
  t Tf_core.resource

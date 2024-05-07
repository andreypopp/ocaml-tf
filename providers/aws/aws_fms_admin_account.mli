(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_fms_admin_account

val aws_fms_admin_account :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_fms_admin_account

val yojson_of_aws_fms_admin_account : aws_fms_admin_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource

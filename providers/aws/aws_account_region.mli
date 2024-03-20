(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_account_region

val aws_account_region :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  region_name:string prop ->
  unit ->
  aws_account_region

val yojson_of_aws_account_region : aws_account_region -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  enabled : bool prop;
  id : string prop;
  opt_status : string prop;
  region_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  region_name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  region_name:string prop ->
  string ->
  t Tf_core.resource

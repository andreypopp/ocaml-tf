(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_nat_address

val google_apigee_nat_address :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  google_apigee_nat_address

val yojson_of_google_apigee_nat_address :
  google_apigee_nat_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_id : string prop;
  ip_address : string prop;
  name : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

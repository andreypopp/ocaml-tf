(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_access_context_manager_ingress_policy

val google_access_context_manager_ingress_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ingress_policy_name:string prop ->
  resource:string prop ->
  unit ->
  google_access_context_manager_ingress_policy

val yojson_of_google_access_context_manager_ingress_policy :
  google_access_context_manager_ingress_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ingress_policy_name : string prop;
  resource : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  ingress_policy_name:string prop ->
  resource:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ingress_policy_name:string prop ->
  resource:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_access_context_manager_egress_policy

val google_access_context_manager_egress_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  egress_policy_name:string prop ->
  resource:string prop ->
  unit ->
  google_access_context_manager_egress_policy

val yojson_of_google_access_context_manager_egress_policy :
  google_access_context_manager_egress_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  egress_policy_name : string prop;
  id : string prop;
  resource : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  egress_policy_name:string prop ->
  resource:string prop ->
  string ->
  t

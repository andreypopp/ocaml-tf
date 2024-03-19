(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_firewall_policy_association

val google_compute_firewall_policy_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  unit ->
  google_compute_firewall_policy_association

val yojson_of_google_compute_firewall_policy_association :
  google_compute_firewall_policy_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop;
  name : string prop;
  short_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  string ->
  t

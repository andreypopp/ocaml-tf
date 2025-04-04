(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_network_firewall_policy_association

val google_compute_network_firewall_policy_association :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  unit ->
  google_compute_network_firewall_policy_association

val yojson_of_google_compute_network_firewall_policy_association :
  google_compute_network_firewall_policy_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  short_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

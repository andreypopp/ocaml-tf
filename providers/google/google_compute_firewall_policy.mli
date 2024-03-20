(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_firewall_policy

val google_compute_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  unit ->
  google_compute_firewall_policy

val yojson_of_google_compute_firewall_policy :
  google_compute_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
  short_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t Tf_core.resource

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

type google_compute_region_network_firewall_policy

val google_compute_region_network_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_region_network_firewall_policy

val yojson_of_google_compute_region_network_firewall_policy :
  google_compute_region_network_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  region_network_firewall_policy_id : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource

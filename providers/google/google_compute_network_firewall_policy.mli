(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_firewall_policy__timeouts
type google_compute_network_firewall_policy

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  network_firewall_policy_id : string prop;
  project : string prop;
  rule_tuple_count : float prop;
  self_link : string prop;
  self_link_with_id : string prop;
}

val google_compute_network_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_network_firewall_policy__timeouts ->
  name:string prop ->
  string ->
  t

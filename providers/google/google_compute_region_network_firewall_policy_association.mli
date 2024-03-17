(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_network_firewall_policy_association__timeouts

type google_compute_region_network_firewall_policy_association

type t = private {
  attachment_target : string prop;
  firewall_policy : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  short_name : string prop;
}

val google_compute_region_network_firewall_policy_association :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:
    google_compute_region_network_firewall_policy_association__timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  string ->
  t

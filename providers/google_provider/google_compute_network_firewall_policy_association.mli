(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_firewall_policy_association__timeouts
type google_compute_network_firewall_policy_association

val google_compute_network_firewall_policy_association :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_compute_network_firewall_policy_association__timeouts ->
  attachment_target:string prop ->
  firewall_policy:string prop ->
  name:string prop ->
  string ->
  unit

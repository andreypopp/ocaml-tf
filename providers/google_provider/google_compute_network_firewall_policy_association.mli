(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_firewall_policy_association__timeouts
type google_compute_network_firewall_policy_association

val google_compute_network_firewall_policy_association :
  ?timeouts:
    google_compute_network_firewall_policy_association__timeouts ->
  attachment_target:string ->
  firewall_policy:string ->
  name:string ->
  string ->
  unit

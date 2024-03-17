(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_firewall_policy_rule__match__layer4_configs

type google_compute_network_firewall_policy_rule__match__src_secure_tags

type google_compute_network_firewall_policy_rule__match
type google_compute_network_firewall_policy_rule__target_secure_tags
type google_compute_network_firewall_policy_rule__timeouts
type google_compute_network_firewall_policy_rule

val google_compute_network_firewall_policy_rule :
  ?description:string ->
  ?disabled:bool ->
  ?enable_logging:bool ->
  ?id:string ->
  ?project:string ->
  ?rule_name:string ->
  ?target_service_accounts:string list ->
  ?timeouts:google_compute_network_firewall_policy_rule__timeouts ->
  action:string ->
  direction:string ->
  firewall_policy:string ->
  priority:float ->
  match_:google_compute_network_firewall_policy_rule__match list ->
  target_secure_tags:
    google_compute_network_firewall_policy_rule__target_secure_tags
    list ->
  string ->
  unit

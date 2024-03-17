(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_firewall_policy_rule__match__layer4_configs
type google_compute_firewall_policy_rule__match
type google_compute_firewall_policy_rule__timeouts
type google_compute_firewall_policy_rule

val google_compute_firewall_policy_rule :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?target_resources:string prop list ->
  ?target_service_accounts:string prop list ->
  ?timeouts:google_compute_firewall_policy_rule__timeouts ->
  action:string prop ->
  direction:string prop ->
  firewall_policy:string prop ->
  priority:float prop ->
  match_:google_compute_firewall_policy_rule__match list ->
  string ->
  unit

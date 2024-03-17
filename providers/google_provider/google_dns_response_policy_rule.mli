(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_response_policy_rule__local_data__local_datas
type google_dns_response_policy_rule__local_data
type google_dns_response_policy_rule__timeouts
type google_dns_response_policy_rule

val google_dns_response_policy_rule :
  ?timeouts:google_dns_response_policy_rule__timeouts ->
  dns_name:string ->
  response_policy:string ->
  rule_name:string ->
  local_data:google_dns_response_policy_rule__local_data list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_response_policy_rule__local_data__local_datas
type google_dns_response_policy_rule__local_data
type google_dns_response_policy_rule__timeouts
type google_dns_response_policy_rule

type t = private {
  dns_name : string prop;
  id : string prop;
  project : string prop;
  response_policy : string prop;
  rule_name : string prop;
}

val google_dns_response_policy_rule :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_dns_response_policy_rule__timeouts ->
  dns_name:string prop ->
  response_policy:string prop ->
  rule_name:string prop ->
  local_data:google_dns_response_policy_rule__local_data list ->
  string ->
  t

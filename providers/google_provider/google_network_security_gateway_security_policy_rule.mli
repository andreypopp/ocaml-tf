(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_gateway_security_policy_rule__timeouts
type google_network_security_gateway_security_policy_rule

val google_network_security_gateway_security_policy_rule :
  ?application_matcher:string ->
  ?description:string ->
  ?tls_inspection_enabled:bool ->
  ?timeouts:
    google_network_security_gateway_security_policy_rule__timeouts ->
  basic_profile:string ->
  enabled:bool ->
  gateway_security_policy:string ->
  location:string ->
  name:string ->
  priority:float ->
  session_matcher:string ->
  string ->
  unit

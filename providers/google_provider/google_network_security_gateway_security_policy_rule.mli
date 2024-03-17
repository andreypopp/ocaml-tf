(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_gateway_security_policy_rule__timeouts
type google_network_security_gateway_security_policy_rule

val google_network_security_gateway_security_policy_rule :
  ?application_matcher:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?tls_inspection_enabled:bool prop ->
  ?timeouts:
    google_network_security_gateway_security_policy_rule__timeouts ->
  basic_profile:string prop ->
  enabled:bool prop ->
  gateway_security_policy:string prop ->
  location:string prop ->
  name:string prop ->
  priority:float prop ->
  session_matcher:string prop ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_active_directory_domain_trust__timeouts
type google_active_directory_domain_trust

val google_active_directory_domain_trust :
  ?id:string ->
  ?project:string ->
  ?selective_authentication:bool ->
  ?timeouts:google_active_directory_domain_trust__timeouts ->
  domain:string ->
  target_dns_ip_addresses:string list ->
  target_domain_name:string ->
  trust_direction:string ->
  trust_handshake_secret:string ->
  trust_type:string ->
  string ->
  unit

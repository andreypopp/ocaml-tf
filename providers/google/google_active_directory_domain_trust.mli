(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_active_directory_domain_trust__timeouts
type google_active_directory_domain_trust

type t = private {
  domain : string prop;
  id : string prop;
  project : string prop;
  selective_authentication : bool prop;
  target_dns_ip_addresses : string list prop;
  target_domain_name : string prop;
  trust_direction : string prop;
  trust_handshake_secret : string prop;
  trust_type : string prop;
}

val google_active_directory_domain_trust :
  ?id:string prop ->
  ?project:string prop ->
  ?selective_authentication:bool prop ->
  ?timeouts:google_active_directory_domain_trust__timeouts ->
  domain:string prop ->
  target_dns_ip_addresses:string prop list ->
  target_domain_name:string prop ->
  trust_direction:string prop ->
  trust_handshake_secret:string prop ->
  trust_type:string prop ->
  string ->
  t

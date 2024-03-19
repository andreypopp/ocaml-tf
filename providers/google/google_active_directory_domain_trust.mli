(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_active_directory_domain_trust

val google_active_directory_domain_trust :
  ?id:string prop ->
  ?project:string prop ->
  ?selective_authentication:bool prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  target_dns_ip_addresses:string prop list ->
  target_domain_name:string prop ->
  trust_direction:string prop ->
  trust_handshake_secret:string prop ->
  trust_type:string prop ->
  unit ->
  google_active_directory_domain_trust

val yojson_of_google_active_directory_domain_trust :
  google_active_directory_domain_trust -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?selective_authentication:bool prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  target_dns_ip_addresses:string prop list ->
  target_domain_name:string prop ->
  trust_direction:string prop ->
  trust_handshake_secret:string prop ->
  trust_type:string prop ->
  string ->
  t

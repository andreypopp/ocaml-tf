(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type alternative_name_server_config__target_name_servers

val alternative_name_server_config__target_name_servers :
  ?forwarding_path:string prop ->
  ipv4_address:string prop ->
  unit ->
  alternative_name_server_config__target_name_servers

type alternative_name_server_config

val alternative_name_server_config :
  target_name_servers:
    alternative_name_server_config__target_name_servers list ->
  unit ->
  alternative_name_server_config

type networks

val networks : network_url:string prop -> unit -> networks

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dns_policy

val google_dns_policy :
  ?description:string prop ->
  ?enable_inbound_forwarding:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  alternative_name_server_config:alternative_name_server_config list ->
  networks:networks list ->
  unit ->
  google_dns_policy

val yojson_of_google_dns_policy : google_dns_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  enable_inbound_forwarding : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enable_inbound_forwarding:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  alternative_name_server_config:alternative_name_server_config list ->
  networks:networks list ->
  string ->
  t

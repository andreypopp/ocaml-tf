(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_policy__alternative_name_server_config__target_name_servers

type google_dns_policy__alternative_name_server_config
type google_dns_policy__networks
type google_dns_policy__timeouts
type google_dns_policy

val google_dns_policy :
  ?description:string ->
  ?enable_inbound_forwarding:bool ->
  ?enable_logging:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_dns_policy__timeouts ->
  name:string ->
  alternative_name_server_config:
    google_dns_policy__alternative_name_server_config list ->
  networks:google_dns_policy__networks list ->
  string ->
  unit

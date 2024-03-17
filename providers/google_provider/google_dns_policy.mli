(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_policy__alternative_name_server_config__target_name_servers

type google_dns_policy__alternative_name_server_config
type google_dns_policy__networks
type google_dns_policy__timeouts
type google_dns_policy

val google_dns_policy :
  ?description:string prop ->
  ?enable_inbound_forwarding:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_dns_policy__timeouts ->
  name:string prop ->
  alternative_name_server_config:
    google_dns_policy__alternative_name_server_config list ->
  networks:google_dns_policy__networks list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_edge_cache_origin__aws_v4_authentication

type google_network_services_edge_cache_origin__origin_override_action__header_action__request_headers_to_add

type google_network_services_edge_cache_origin__origin_override_action__header_action

type google_network_services_edge_cache_origin__origin_override_action__url_rewrite

type google_network_services_edge_cache_origin__origin_override_action
type google_network_services_edge_cache_origin__origin_redirect
type google_network_services_edge_cache_origin__timeout
type google_network_services_edge_cache_origin__timeouts
type google_network_services_edge_cache_origin

val google_network_services_edge_cache_origin :
  ?description:string prop ->
  ?failover_origin:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_attempts:float prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?retry_conditions:string prop list ->
  ?timeouts:google_network_services_edge_cache_origin__timeouts ->
  name:string prop ->
  origin_address:string prop ->
  aws_v4_authentication:
    google_network_services_edge_cache_origin__aws_v4_authentication
    list ->
  origin_override_action:
    google_network_services_edge_cache_origin__origin_override_action
    list ->
  origin_redirect:
    google_network_services_edge_cache_origin__origin_redirect list ->
  timeout:google_network_services_edge_cache_origin__timeout list ->
  string ->
  unit

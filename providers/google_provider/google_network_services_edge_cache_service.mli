(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_edge_cache_service__log_config
type google_network_services_edge_cache_service__routing__host_rule

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_add

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_remove

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_add

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_remove

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__header_match

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__query_parameter_match

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cors_policy

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__url_rewrite

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__url_redirect

type google_network_services_edge_cache_service__routing__path_matcher__route_rule

type google_network_services_edge_cache_service__routing__path_matcher
type google_network_services_edge_cache_service__routing
type google_network_services_edge_cache_service__timeouts
type google_network_services_edge_cache_service

type t = private {
  description : string prop;
  disable_http2 : bool prop;
  disable_quic : bool prop;
  edge_security_policy : string prop;
  edge_ssl_certificates : string list prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ipv4_addresses : string list prop;
  ipv6_addresses : string list prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  require_tls : bool prop;
  ssl_policy : string prop;
  terraform_labels : (string * string) list prop;
}

val google_network_services_edge_cache_service :
  ?description:string prop ->
  ?disable_http2:bool prop ->
  ?disable_quic:bool prop ->
  ?edge_security_policy:string prop ->
  ?edge_ssl_certificates:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?require_tls:bool prop ->
  ?ssl_policy:string prop ->
  ?timeouts:google_network_services_edge_cache_service__timeouts ->
  name:string prop ->
  log_config:
    google_network_services_edge_cache_service__log_config list ->
  routing:google_network_services_edge_cache_service__routing list ->
  string ->
  t

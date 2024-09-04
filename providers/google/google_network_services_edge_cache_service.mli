(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_config

val log_config :
  ?enable:bool prop -> ?sample_rate:float prop -> unit -> log_config

type routing__host_rule

val routing__host_rule :
  ?description:string prop ->
  hosts:string prop list ->
  path_matcher:string prop ->
  unit ->
  routing__host_rule

type routing__path_matcher__route_rule__header_action__request_header_to_add

val routing__path_matcher__route_rule__header_action__request_header_to_add :
  ?replace:bool prop ->
  header_name:string prop ->
  header_value:string prop ->
  unit ->
  routing__path_matcher__route_rule__header_action__request_header_to_add

type routing__path_matcher__route_rule__header_action__request_header_to_remove

val routing__path_matcher__route_rule__header_action__request_header_to_remove :
  header_name:string prop ->
  unit ->
  routing__path_matcher__route_rule__header_action__request_header_to_remove

type routing__path_matcher__route_rule__header_action__response_header_to_add

val routing__path_matcher__route_rule__header_action__response_header_to_add :
  ?replace:bool prop ->
  header_name:string prop ->
  header_value:string prop ->
  unit ->
  routing__path_matcher__route_rule__header_action__response_header_to_add

type routing__path_matcher__route_rule__header_action__response_header_to_remove

val routing__path_matcher__route_rule__header_action__response_header_to_remove :
  header_name:string prop ->
  unit ->
  routing__path_matcher__route_rule__header_action__response_header_to_remove

type routing__path_matcher__route_rule__header_action

val routing__path_matcher__route_rule__header_action :
  ?request_header_to_add:
    routing__path_matcher__route_rule__header_action__request_header_to_add
    list ->
  ?request_header_to_remove:
    routing__path_matcher__route_rule__header_action__request_header_to_remove
    list ->
  ?response_header_to_add:
    routing__path_matcher__route_rule__header_action__response_header_to_add
    list ->
  ?response_header_to_remove:
    routing__path_matcher__route_rule__header_action__response_header_to_remove
    list ->
  unit ->
  routing__path_matcher__route_rule__header_action

type routing__path_matcher__route_rule__match_rule__header_match

val routing__path_matcher__route_rule__match_rule__header_match :
  ?exact_match:string prop ->
  ?invert_match:bool prop ->
  ?prefix_match:string prop ->
  ?present_match:bool prop ->
  ?suffix_match:string prop ->
  header_name:string prop ->
  unit ->
  routing__path_matcher__route_rule__match_rule__header_match

type routing__path_matcher__route_rule__match_rule__query_parameter_match

val routing__path_matcher__route_rule__match_rule__query_parameter_match :
  ?exact_match:string prop ->
  ?present_match:bool prop ->
  name:string prop ->
  unit ->
  routing__path_matcher__route_rule__match_rule__query_parameter_match

type routing__path_matcher__route_rule__match_rule

val routing__path_matcher__route_rule__match_rule :
  ?full_path_match:string prop ->
  ?ignore_case:bool prop ->
  ?path_template_match:string prop ->
  ?prefix_match:string prop ->
  ?header_match:
    routing__path_matcher__route_rule__match_rule__header_match list ->
  ?query_parameter_match:
    routing__path_matcher__route_rule__match_rule__query_parameter_match
    list ->
  unit ->
  routing__path_matcher__route_rule__match_rule

type routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures

val routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures :
  ?copied_parameters:string prop list ->
  ?keyset:string prop ->
  ?token_query_parameter:string prop ->
  ?token_ttl:string prop ->
  actions:string prop list ->
  unit ->
  routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures

type routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy

val routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy :
  ?exclude_host:bool prop ->
  ?exclude_query_string:bool prop ->
  ?excluded_query_parameters:string prop list ->
  ?include_protocol:bool prop ->
  ?included_cookie_names:string prop list ->
  ?included_header_names:string prop list ->
  ?included_query_parameters:string prop list ->
  unit ->
  routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy

type routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options

val routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options :
  ?allowed_signature_algorithms:string prop list ->
  ?token_query_parameter:string prop ->
  unit ->
  routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options

type routing__path_matcher__route_rule__route_action__cdn_policy

val routing__path_matcher__route_rule__route_action__cdn_policy :
  ?cache_mode:string prop ->
  ?client_ttl:string prop ->
  ?default_ttl:string prop ->
  ?max_ttl:string prop ->
  ?negative_caching:bool prop ->
  ?negative_caching_policy:string prop Tf_core.assoc ->
  ?signed_request_keyset:string prop ->
  ?signed_request_maximum_expiration_ttl:string prop ->
  ?signed_request_mode:string prop ->
  ?add_signatures:
    routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    list ->
  ?cache_key_policy:
    routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    list ->
  ?signed_token_options:
    routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    list ->
  unit ->
  routing__path_matcher__route_rule__route_action__cdn_policy

type routing__path_matcher__route_rule__route_action__cors_policy

val routing__path_matcher__route_rule__route_action__cors_policy :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origins:string prop list ->
  ?disabled:bool prop ->
  ?expose_headers:string prop list ->
  max_age:string prop ->
  unit ->
  routing__path_matcher__route_rule__route_action__cors_policy

type routing__path_matcher__route_rule__route_action__url_rewrite

val routing__path_matcher__route_rule__route_action__url_rewrite :
  ?host_rewrite:string prop ->
  ?path_prefix_rewrite:string prop ->
  ?path_template_rewrite:string prop ->
  unit ->
  routing__path_matcher__route_rule__route_action__url_rewrite

type routing__path_matcher__route_rule__route_action

val routing__path_matcher__route_rule__route_action :
  ?cdn_policy:
    routing__path_matcher__route_rule__route_action__cdn_policy list ->
  ?cors_policy:
    routing__path_matcher__route_rule__route_action__cors_policy list ->
  ?url_rewrite:
    routing__path_matcher__route_rule__route_action__url_rewrite list ->
  unit ->
  routing__path_matcher__route_rule__route_action

type routing__path_matcher__route_rule__url_redirect

val routing__path_matcher__route_rule__url_redirect :
  ?host_redirect:string prop ->
  ?https_redirect:bool prop ->
  ?path_redirect:string prop ->
  ?prefix_redirect:string prop ->
  ?redirect_response_code:string prop ->
  ?strip_query:bool prop ->
  unit ->
  routing__path_matcher__route_rule__url_redirect

type routing__path_matcher__route_rule

val routing__path_matcher__route_rule :
  ?description:string prop ->
  ?origin:string prop ->
  ?header_action:
    routing__path_matcher__route_rule__header_action list ->
  ?route_action:routing__path_matcher__route_rule__route_action list ->
  ?url_redirect:routing__path_matcher__route_rule__url_redirect list ->
  priority:string prop ->
  match_rule:routing__path_matcher__route_rule__match_rule list ->
  unit ->
  routing__path_matcher__route_rule

type routing__path_matcher

val routing__path_matcher :
  ?description:string prop ->
  name:string prop ->
  route_rule:routing__path_matcher__route_rule list ->
  unit ->
  routing__path_matcher

type routing

val routing :
  host_rule:routing__host_rule list ->
  path_matcher:routing__path_matcher list ->
  unit ->
  routing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_services_edge_cache_service

val google_network_services_edge_cache_service :
  ?description:string prop ->
  ?disable_http2:bool prop ->
  ?disable_quic:bool prop ->
  ?edge_security_policy:string prop ->
  ?edge_ssl_certificates:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_tls:bool prop ->
  ?ssl_policy:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing:routing list ->
  unit ->
  google_network_services_edge_cache_service

val yojson_of_google_network_services_edge_cache_service :
  google_network_services_edge_cache_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  disable_http2 : bool prop;
  disable_quic : bool prop;
  edge_security_policy : string prop;
  edge_ssl_certificates : string list prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ipv4_addresses : string list prop;
  ipv6_addresses : string list prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  require_tls : bool prop;
  ssl_policy : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disable_http2:bool prop ->
  ?disable_quic:bool prop ->
  ?edge_security_policy:string prop ->
  ?edge_ssl_certificates:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_tls:bool prop ->
  ?ssl_policy:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing:routing list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disable_http2:bool prop ->
  ?disable_quic:bool prop ->
  ?edge_security_policy:string prop ->
  ?edge_ssl_certificates:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_tls:bool prop ->
  ?ssl_policy:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing:routing list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type authentication_certificate

val authentication_certificate :
  data:string prop ->
  name:string prop ->
  unit ->
  authentication_certificate

type autoscale_configuration

val autoscale_configuration :
  ?max_capacity:float prop ->
  min_capacity:float prop ->
  unit ->
  autoscale_configuration

type backend_address_pool

val backend_address_pool :
  ?fqdns:string prop list ->
  ?ip_addresses:string prop list ->
  name:string prop ->
  unit ->
  backend_address_pool

type backend_http_settings__authentication_certificate

val backend_http_settings__authentication_certificate :
  name:string prop ->
  unit ->
  backend_http_settings__authentication_certificate

type backend_http_settings__connection_draining

val backend_http_settings__connection_draining :
  drain_timeout_sec:float prop ->
  enabled:bool prop ->
  unit ->
  backend_http_settings__connection_draining

type backend_http_settings

val backend_http_settings :
  ?affinity_cookie_name:string prop ->
  ?host_name:string prop ->
  ?path:string prop ->
  ?pick_host_name_from_backend_address:bool prop ->
  ?probe_name:string prop ->
  ?request_timeout:float prop ->
  ?trusted_root_certificate_names:string prop list ->
  cookie_based_affinity:string prop ->
  name:string prop ->
  port:float prop ->
  protocol:string prop ->
  authentication_certificate:
    backend_http_settings__authentication_certificate list ->
  connection_draining:backend_http_settings__connection_draining list ->
  unit ->
  backend_http_settings

type custom_error_configuration

val custom_error_configuration :
  custom_error_page_url:string prop ->
  status_code:string prop ->
  unit ->
  custom_error_configuration

type frontend_ip_configuration

val frontend_ip_configuration :
  ?private_ip_address:string prop ->
  ?private_ip_address_allocation:string prop ->
  ?private_link_configuration_name:string prop ->
  ?public_ip_address_id:string prop ->
  ?subnet_id:string prop ->
  name:string prop ->
  unit ->
  frontend_ip_configuration

type frontend_port

val frontend_port :
  name:string prop -> port:float prop -> unit -> frontend_port

type gateway_ip_configuration

val gateway_ip_configuration :
  name:string prop ->
  subnet_id:string prop ->
  unit ->
  gateway_ip_configuration

type global

val global :
  request_buffering_enabled:bool prop ->
  response_buffering_enabled:bool prop ->
  unit ->
  global

type http_listener__custom_error_configuration

val http_listener__custom_error_configuration :
  custom_error_page_url:string prop ->
  status_code:string prop ->
  unit ->
  http_listener__custom_error_configuration

type http_listener

val http_listener :
  ?firewall_policy_id:string prop ->
  ?host_name:string prop ->
  ?host_names:string prop list ->
  ?require_sni:bool prop ->
  ?ssl_certificate_name:string prop ->
  ?ssl_profile_name:string prop ->
  frontend_ip_configuration_name:string prop ->
  frontend_port_name:string prop ->
  name:string prop ->
  protocol:string prop ->
  custom_error_configuration:
    http_listener__custom_error_configuration list ->
  unit ->
  http_listener

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type private_link_configuration__ip_configuration

val private_link_configuration__ip_configuration :
  ?private_ip_address:string prop ->
  name:string prop ->
  primary:bool prop ->
  private_ip_address_allocation:string prop ->
  subnet_id:string prop ->
  unit ->
  private_link_configuration__ip_configuration

type private_link_configuration

val private_link_configuration :
  name:string prop ->
  ip_configuration:private_link_configuration__ip_configuration list ->
  unit ->
  private_link_configuration

type probe__match

val probe__match :
  ?body:string prop ->
  status_code:string prop list ->
  unit ->
  probe__match

type probe

val probe :
  ?host:string prop ->
  ?minimum_servers:float prop ->
  ?pick_host_name_from_backend_http_settings:bool prop ->
  ?port:float prop ->
  interval:float prop ->
  name:string prop ->
  path:string prop ->
  protocol:string prop ->
  timeout:float prop ->
  unhealthy_threshold:float prop ->
  match_:probe__match list ->
  unit ->
  probe

type redirect_configuration

val redirect_configuration :
  ?include_path:bool prop ->
  ?include_query_string:bool prop ->
  ?target_listener_name:string prop ->
  ?target_url:string prop ->
  name:string prop ->
  redirect_type:string prop ->
  unit ->
  redirect_configuration

type request_routing_rule

val request_routing_rule :
  ?backend_address_pool_name:string prop ->
  ?backend_http_settings_name:string prop ->
  ?priority:float prop ->
  ?redirect_configuration_name:string prop ->
  ?rewrite_rule_set_name:string prop ->
  ?url_path_map_name:string prop ->
  http_listener_name:string prop ->
  name:string prop ->
  rule_type:string prop ->
  unit ->
  request_routing_rule

type rewrite_rule_set__rewrite_rule__condition

val rewrite_rule_set__rewrite_rule__condition :
  ?ignore_case:bool prop ->
  ?negate:bool prop ->
  pattern:string prop ->
  variable:string prop ->
  unit ->
  rewrite_rule_set__rewrite_rule__condition

type rewrite_rule_set__rewrite_rule__request_header_configuration

val rewrite_rule_set__rewrite_rule__request_header_configuration :
  header_name:string prop ->
  header_value:string prop ->
  unit ->
  rewrite_rule_set__rewrite_rule__request_header_configuration

type rewrite_rule_set__rewrite_rule__response_header_configuration

val rewrite_rule_set__rewrite_rule__response_header_configuration :
  header_name:string prop ->
  header_value:string prop ->
  unit ->
  rewrite_rule_set__rewrite_rule__response_header_configuration

type rewrite_rule_set__rewrite_rule__url

val rewrite_rule_set__rewrite_rule__url :
  ?components:string prop ->
  ?path:string prop ->
  ?query_string:string prop ->
  ?reroute:bool prop ->
  unit ->
  rewrite_rule_set__rewrite_rule__url

type rewrite_rule_set__rewrite_rule

val rewrite_rule_set__rewrite_rule :
  name:string prop ->
  rule_sequence:float prop ->
  condition:rewrite_rule_set__rewrite_rule__condition list ->
  request_header_configuration:
    rewrite_rule_set__rewrite_rule__request_header_configuration list ->
  response_header_configuration:
    rewrite_rule_set__rewrite_rule__response_header_configuration
    list ->
  url:rewrite_rule_set__rewrite_rule__url list ->
  unit ->
  rewrite_rule_set__rewrite_rule

type rewrite_rule_set

val rewrite_rule_set :
  name:string prop ->
  rewrite_rule:rewrite_rule_set__rewrite_rule list ->
  unit ->
  rewrite_rule_set

type sku

val sku :
  ?capacity:float prop ->
  name:string prop ->
  tier:string prop ->
  unit ->
  sku

type ssl_certificate

val ssl_certificate :
  ?data:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  name:string prop ->
  unit ->
  ssl_certificate

type ssl_policy

val ssl_policy :
  ?cipher_suites:string prop list ->
  ?disabled_protocols:string prop list ->
  ?min_protocol_version:string prop ->
  ?policy_name:string prop ->
  ?policy_type:string prop ->
  unit ->
  ssl_policy

type ssl_profile__ssl_policy

val ssl_profile__ssl_policy :
  ?cipher_suites:string prop list ->
  ?disabled_protocols:string prop list ->
  ?min_protocol_version:string prop ->
  ?policy_name:string prop ->
  ?policy_type:string prop ->
  unit ->
  ssl_profile__ssl_policy

type ssl_profile

val ssl_profile :
  ?trusted_client_certificate_names:string prop list ->
  ?verify_client_cert_issuer_dn:bool prop ->
  ?verify_client_certificate_revocation:string prop ->
  name:string prop ->
  ssl_policy:ssl_profile__ssl_policy list ->
  unit ->
  ssl_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trusted_client_certificate

val trusted_client_certificate :
  data:string prop ->
  name:string prop ->
  unit ->
  trusted_client_certificate

type trusted_root_certificate

val trusted_root_certificate :
  ?data:string prop ->
  ?key_vault_secret_id:string prop ->
  name:string prop ->
  unit ->
  trusted_root_certificate

type url_path_map__path_rule

val url_path_map__path_rule :
  ?backend_address_pool_name:string prop ->
  ?backend_http_settings_name:string prop ->
  ?firewall_policy_id:string prop ->
  ?redirect_configuration_name:string prop ->
  ?rewrite_rule_set_name:string prop ->
  name:string prop ->
  paths:string prop list ->
  unit ->
  url_path_map__path_rule

type url_path_map

val url_path_map :
  ?default_backend_address_pool_name:string prop ->
  ?default_backend_http_settings_name:string prop ->
  ?default_redirect_configuration_name:string prop ->
  ?default_rewrite_rule_set_name:string prop ->
  name:string prop ->
  path_rule:url_path_map__path_rule list ->
  unit ->
  url_path_map

type waf_configuration__disabled_rule_group

val waf_configuration__disabled_rule_group :
  ?rules:float prop list ->
  rule_group_name:string prop ->
  unit ->
  waf_configuration__disabled_rule_group

type waf_configuration__exclusion

val waf_configuration__exclusion :
  ?selector:string prop ->
  ?selector_match_operator:string prop ->
  match_variable:string prop ->
  unit ->
  waf_configuration__exclusion

type waf_configuration

val waf_configuration :
  ?file_upload_limit_mb:float prop ->
  ?max_request_body_size_kb:float prop ->
  ?request_body_check:bool prop ->
  ?rule_set_type:string prop ->
  enabled:bool prop ->
  firewall_mode:string prop ->
  rule_set_version:string prop ->
  disabled_rule_group:waf_configuration__disabled_rule_group list ->
  exclusion:waf_configuration__exclusion list ->
  unit ->
  waf_configuration

type azurerm_application_gateway

val azurerm_application_gateway :
  ?enable_http2:bool prop ->
  ?fips_enabled:bool prop ->
  ?firewall_policy_id:string prop ->
  ?force_firewall_policy_association:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authentication_certificate:authentication_certificate list ->
  autoscale_configuration:autoscale_configuration list ->
  backend_address_pool:backend_address_pool list ->
  backend_http_settings:backend_http_settings list ->
  custom_error_configuration:custom_error_configuration list ->
  frontend_ip_configuration:frontend_ip_configuration list ->
  frontend_port:frontend_port list ->
  gateway_ip_configuration:gateway_ip_configuration list ->
  global:global list ->
  http_listener:http_listener list ->
  identity:identity list ->
  private_link_configuration:private_link_configuration list ->
  probe:probe list ->
  redirect_configuration:redirect_configuration list ->
  request_routing_rule:request_routing_rule list ->
  rewrite_rule_set:rewrite_rule_set list ->
  sku:sku list ->
  ssl_certificate:ssl_certificate list ->
  ssl_policy:ssl_policy list ->
  ssl_profile:ssl_profile list ->
  trusted_client_certificate:trusted_client_certificate list ->
  trusted_root_certificate:trusted_root_certificate list ->
  url_path_map:url_path_map list ->
  waf_configuration:waf_configuration list ->
  unit ->
  azurerm_application_gateway

val yojson_of_azurerm_application_gateway :
  azurerm_application_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enable_http2 : bool prop;
  fips_enabled : bool prop;
  firewall_policy_id : string prop;
  force_firewall_policy_association : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    private_endpoint_connection list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_http2:bool prop ->
  ?fips_enabled:bool prop ->
  ?firewall_policy_id:string prop ->
  ?force_firewall_policy_association:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authentication_certificate:authentication_certificate list ->
  autoscale_configuration:autoscale_configuration list ->
  backend_address_pool:backend_address_pool list ->
  backend_http_settings:backend_http_settings list ->
  custom_error_configuration:custom_error_configuration list ->
  frontend_ip_configuration:frontend_ip_configuration list ->
  frontend_port:frontend_port list ->
  gateway_ip_configuration:gateway_ip_configuration list ->
  global:global list ->
  http_listener:http_listener list ->
  identity:identity list ->
  private_link_configuration:private_link_configuration list ->
  probe:probe list ->
  redirect_configuration:redirect_configuration list ->
  request_routing_rule:request_routing_rule list ->
  rewrite_rule_set:rewrite_rule_set list ->
  sku:sku list ->
  ssl_certificate:ssl_certificate list ->
  ssl_policy:ssl_policy list ->
  ssl_profile:ssl_profile list ->
  trusted_client_certificate:trusted_client_certificate list ->
  trusted_root_certificate:trusted_root_certificate list ->
  url_path_map:url_path_map list ->
  waf_configuration:waf_configuration list ->
  string ->
  t

val make :
  ?enable_http2:bool prop ->
  ?fips_enabled:bool prop ->
  ?firewall_policy_id:string prop ->
  ?force_firewall_policy_association:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authentication_certificate:authentication_certificate list ->
  autoscale_configuration:autoscale_configuration list ->
  backend_address_pool:backend_address_pool list ->
  backend_http_settings:backend_http_settings list ->
  custom_error_configuration:custom_error_configuration list ->
  frontend_ip_configuration:frontend_ip_configuration list ->
  frontend_port:frontend_port list ->
  gateway_ip_configuration:gateway_ip_configuration list ->
  global:global list ->
  http_listener:http_listener list ->
  identity:identity list ->
  private_link_configuration:private_link_configuration list ->
  probe:probe list ->
  redirect_configuration:redirect_configuration list ->
  request_routing_rule:request_routing_rule list ->
  rewrite_rule_set:rewrite_rule_set list ->
  sku:sku list ->
  ssl_certificate:ssl_certificate list ->
  ssl_policy:ssl_policy list ->
  ssl_profile:ssl_profile list ->
  trusted_client_certificate:trusted_client_certificate list ->
  trusted_root_certificate:trusted_root_certificate list ->
  url_path_map:url_path_map list ->
  waf_configuration:waf_configuration list ->
  string ->
  t Tf_core.resource

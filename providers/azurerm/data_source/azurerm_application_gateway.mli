(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_certificate = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type autoscale_configuration = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}

type backend_address_pool = {
  fqdns : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** fqdns *)
  id : string prop;  (** id *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_addresses *)
  name : string prop;  (** name *)
}

type backend_http_settings__connection_draining = {
  drain_timeout_sec : float prop;  (** drain_timeout_sec *)
  enabled : bool prop;  (** enabled *)
}

type backend_http_settings__authentication_certificate = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type backend_http_settings = {
  affinity_cookie_name : string prop;  (** affinity_cookie_name *)
  authentication_certificate :
    backend_http_settings__authentication_certificate list;
      [@default []] [@yojson_drop_default ( = )]
      (** authentication_certificate *)
  connection_draining :
    backend_http_settings__connection_draining list;
      [@default []] [@yojson_drop_default ( = )]
      (** connection_draining *)
  cookie_based_affinity : string prop;  (** cookie_based_affinity *)
  host_name : string prop;  (** host_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  pick_host_name_from_backend_address : bool prop;
      (** pick_host_name_from_backend_address *)
  port : float prop;  (** port *)
  probe_id : string prop;  (** probe_id *)
  probe_name : string prop;  (** probe_name *)
  protocol : string prop;  (** protocol *)
  request_timeout : float prop;  (** request_timeout *)
  trusted_root_certificate_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** trusted_root_certificate_names *)
}

type custom_error_configuration = {
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  id : string prop;  (** id *)
  status_code : string prop;  (** status_code *)
}

type frontend_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  private_link_configuration_id : string prop;
      (** private_link_configuration_id *)
  private_link_configuration_name : string prop;
      (** private_link_configuration_name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type frontend_port = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}

type gateway_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
}

type global = {
  request_buffering_enabled : bool prop;
      (** request_buffering_enabled *)
  response_buffering_enabled : bool prop;
      (** response_buffering_enabled *)
}

type http_listener__custom_error_configuration = {
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  id : string prop;  (** id *)
  status_code : string prop;  (** status_code *)
}

type http_listener = {
  custom_error_configuration :
    http_listener__custom_error_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_error_configuration *)
  firewall_policy_id : string prop;  (** firewall_policy_id *)
  frontend_ip_configuration_id : string prop;
      (** frontend_ip_configuration_id *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port_id : string prop;  (** frontend_port_id *)
  frontend_port_name : string prop;  (** frontend_port_name *)
  host_name : string prop;  (** host_name *)
  host_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** host_names *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  require_sni : bool prop;  (** require_sni *)
  ssl_certificate_id : string prop;  (** ssl_certificate_id *)
  ssl_certificate_name : string prop;  (** ssl_certificate_name *)
  ssl_profile_id : string prop;  (** ssl_profile_id *)
  ssl_profile_name : string prop;  (** ssl_profile_name *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}

type private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type private_link_configuration__ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  subnet_id : string prop;  (** subnet_id *)
}

type private_link_configuration = {
  id : string prop;  (** id *)
  ip_configuration :
    private_link_configuration__ip_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_configuration *)
  name : string prop;  (** name *)
}

type probe__match = {
  body : string prop;  (** body *)
  status_code : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** status_code *)
}

type probe = {
  host : string prop;  (** host *)
  id : string prop;  (** id *)
  interval : float prop;  (** interval *)
  match_ : probe__match list;
      [@default []] [@yojson_drop_default ( = )] [@key "match"]
      (** match *)
  minimum_servers : float prop;  (** minimum_servers *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  pick_host_name_from_backend_http_settings : bool prop;
      (** pick_host_name_from_backend_http_settings *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}

type redirect_configuration = {
  id : string prop;  (** id *)
  include_path : bool prop;  (** include_path *)
  include_query_string : bool prop;  (** include_query_string *)
  name : string prop;  (** name *)
  redirect_type : string prop;  (** redirect_type *)
  target_listener_id : string prop;  (** target_listener_id *)
  target_listener_name : string prop;  (** target_listener_name *)
  target_url : string prop;  (** target_url *)
}

type request_routing_rule = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  backend_address_pool_name : string prop;
      (** backend_address_pool_name *)
  backend_http_settings_id : string prop;
      (** backend_http_settings_id *)
  backend_http_settings_name : string prop;
      (** backend_http_settings_name *)
  http_listener_id : string prop;  (** http_listener_id *)
  http_listener_name : string prop;  (** http_listener_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  redirect_configuration_id : string prop;
      (** redirect_configuration_id *)
  redirect_configuration_name : string prop;
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string prop;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string prop;  (** rewrite_rule_set_name *)
  rule_type : string prop;  (** rule_type *)
  url_path_map_id : string prop;  (** url_path_map_id *)
  url_path_map_name : string prop;  (** url_path_map_name *)
}

type rewrite_rule_set__rewrite_rule__url = {
  components : string prop;  (** components *)
  path : string prop;  (** path *)
  query_string : string prop;  (** query_string *)
  reroute : bool prop;  (** reroute *)
}

type rewrite_rule_set__rewrite_rule__response_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}

type rewrite_rule_set__rewrite_rule__request_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}

type rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool prop;  (** ignore_case *)
  negate : bool prop;  (** negate *)
  pattern : string prop;  (** pattern *)
  variable : string prop;  (** variable *)
}

type rewrite_rule_set__rewrite_rule = {
  condition : rewrite_rule_set__rewrite_rule__condition list;
      [@default []] [@yojson_drop_default ( = )]
      (** condition *)
  name : string prop;  (** name *)
  request_header_configuration :
    rewrite_rule_set__rewrite_rule__request_header_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** request_header_configuration *)
  response_header_configuration :
    rewrite_rule_set__rewrite_rule__response_header_configuration
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** response_header_configuration *)
  rule_sequence : float prop;  (** rule_sequence *)
  url : rewrite_rule_set__rewrite_rule__url list;
      [@default []] [@yojson_drop_default ( = )]
      (** url *)
}

type rewrite_rule_set = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  rewrite_rule : rewrite_rule_set__rewrite_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** rewrite_rule *)
}

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}

type ssl_certificate = {
  id : string prop;  (** id *)
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}

type ssl_policy = {
  cipher_suites : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** cipher_suites *)
  disabled_protocols : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** disabled_protocols *)
  min_protocol_version : string prop;  (** min_protocol_version *)
  policy_name : string prop;  (** policy_name *)
  policy_type : string prop;  (** policy_type *)
}

type ssl_profile__ssl_policy = {
  cipher_suites : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** cipher_suites *)
  disabled_protocols : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** disabled_protocols *)
  min_protocol_version : string prop;  (** min_protocol_version *)
  policy_name : string prop;  (** policy_name *)
  policy_type : string prop;  (** policy_type *)
}

type ssl_profile = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  ssl_policy : ssl_profile__ssl_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** ssl_policy *)
  trusted_client_certificate_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** trusted_client_certificate_names *)
  verify_client_certificate_issuer_dn : bool prop;
      (** verify_client_certificate_issuer_dn *)
  verify_client_certificate_revocation : string prop;
      (** verify_client_certificate_revocation *)
}

type trusted_client_certificate = {
  data : string prop;  (** data *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type trusted_root_certificate = {
  id : string prop;  (** id *)
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  name : string prop;  (** name *)
}

type url_path_map__path_rule = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  backend_address_pool_name : string prop;
      (** backend_address_pool_name *)
  backend_http_settings_id : string prop;
      (** backend_http_settings_id *)
  backend_http_settings_name : string prop;
      (** backend_http_settings_name *)
  firewall_policy_id : string prop;  (** firewall_policy_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  paths : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** paths *)
  redirect_configuration_id : string prop;
      (** redirect_configuration_id *)
  redirect_configuration_name : string prop;
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string prop;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string prop;  (** rewrite_rule_set_name *)
}

type url_path_map = {
  default_backend_address_pool_id : string prop;
      (** default_backend_address_pool_id *)
  default_backend_address_pool_name : string prop;
      (** default_backend_address_pool_name *)
  default_backend_http_settings_id : string prop;
      (** default_backend_http_settings_id *)
  default_backend_http_settings_name : string prop;
      (** default_backend_http_settings_name *)
  default_redirect_configuration_id : string prop;
      (** default_redirect_configuration_id *)
  default_redirect_configuration_name : string prop;
      (** default_redirect_configuration_name *)
  default_rewrite_rule_set_id : string prop;
      (** default_rewrite_rule_set_id *)
  default_rewrite_rule_set_name : string prop;
      (** default_rewrite_rule_set_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  path_rule : url_path_map__path_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** path_rule *)
}

type waf_configuration__exclusion = {
  match_variable : string prop;  (** match_variable *)
  selector : string prop;  (** selector *)
  selector_match_operator : string prop;
      (** selector_match_operator *)
}

type waf_configuration__disabled_rule_group = {
  rule_group_name : string prop;  (** rule_group_name *)
  rules : float prop list; [@default []] [@yojson_drop_default ( = )]
      (** rules *)
}

type waf_configuration = {
  disabled_rule_group : waf_configuration__disabled_rule_group list;
      [@default []] [@yojson_drop_default ( = )]
      (** disabled_rule_group *)
  enabled : bool prop;  (** enabled *)
  exclusion : waf_configuration__exclusion list;
      [@default []] [@yojson_drop_default ( = )]
      (** exclusion *)
  file_upload_limit_mb : float prop;  (** file_upload_limit_mb *)
  firewall_mode : string prop;  (** firewall_mode *)
  max_request_body_size_kb : float prop;
      (** max_request_body_size_kb *)
  request_body_check : bool prop;  (** request_body_check *)
  rule_set_type : string prop;  (** rule_set_type *)
  rule_set_version : string prop;  (** rule_set_version *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_application_gateway

val azurerm_application_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_application_gateway

val yojson_of_azurerm_application_gateway :
  azurerm_application_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authentication_certificate : authentication_certificate list prop;
  autoscale_configuration : autoscale_configuration list prop;
  backend_address_pool : backend_address_pool list prop;
  backend_http_settings : backend_http_settings list prop;
  custom_error_configuration : custom_error_configuration list prop;
  fips_enabled : bool prop;
  firewall_policy_id : string prop;
  force_firewall_policy_association : bool prop;
  frontend_ip_configuration : frontend_ip_configuration list prop;
  frontend_port : frontend_port list prop;
  gateway_ip_configuration : gateway_ip_configuration list prop;
  global : global list prop;
  http2_enabled : bool prop;
  http_listener : http_listener list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    private_endpoint_connection list prop;
  private_link_configuration : private_link_configuration list prop;
  probe : probe list prop;
  redirect_configuration : redirect_configuration list prop;
  request_routing_rule : request_routing_rule list prop;
  resource_group_name : string prop;
  rewrite_rule_set : rewrite_rule_set list prop;
  sku : sku list prop;
  ssl_certificate : ssl_certificate list prop;
  ssl_policy : ssl_policy list prop;
  ssl_profile : ssl_profile list prop;
  tags : (string * string) list prop;
  trusted_client_certificate : trusted_client_certificate list prop;
  trusted_root_certificate : trusted_root_certificate list prop;
  url_path_map : url_path_map list prop;
  waf_configuration : waf_configuration list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

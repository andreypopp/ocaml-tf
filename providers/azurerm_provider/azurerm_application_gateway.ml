(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_gateway__authentication_certificate = {
  data : string;  (** data *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__authentication_certificate *)

type azurerm_application_gateway__autoscale_configuration = {
  max_capacity : float option; [@option]  (** max_capacity *)
  min_capacity : float;  (** min_capacity *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__autoscale_configuration *)

type azurerm_application_gateway__backend_address_pool = {
  fqdns : string list option; [@option]  (** fqdns *)
  id : string;  (** id *)
  ip_addresses : string list option; [@option]  (** ip_addresses *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_address_pool *)

type azurerm_application_gateway__backend_http_settings__authentication_certificate = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_http_settings__authentication_certificate *)

type azurerm_application_gateway__backend_http_settings__connection_draining = {
  drain_timeout_sec : float;  (** drain_timeout_sec *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_http_settings__connection_draining *)

type azurerm_application_gateway__backend_http_settings = {
  affinity_cookie_name : string option; [@option]
      (** affinity_cookie_name *)
  cookie_based_affinity : string;  (** cookie_based_affinity *)
  host_name : string option; [@option]  (** host_name *)
  id : string;  (** id *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  pick_host_name_from_backend_address : bool option; [@option]
      (** pick_host_name_from_backend_address *)
  port : float;  (** port *)
  probe_id : string;  (** probe_id *)
  probe_name : string option; [@option]  (** probe_name *)
  protocol : string;  (** protocol *)
  request_timeout : float option; [@option]  (** request_timeout *)
  trusted_root_certificate_names : string list option; [@option]
      (** trusted_root_certificate_names *)
  authentication_certificate :
    azurerm_application_gateway__backend_http_settings__authentication_certificate
    list;
  connection_draining :
    azurerm_application_gateway__backend_http_settings__connection_draining
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_http_settings *)

type azurerm_application_gateway__custom_error_configuration = {
  custom_error_page_url : string;  (** custom_error_page_url *)
  id : string;  (** id *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__custom_error_configuration *)

type azurerm_application_gateway__frontend_ip_configuration = {
  id : string;  (** id *)
  name : string;  (** name *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string option; [@option]
      (** private_ip_address_allocation *)
  private_link_configuration_id : string;
      (** private_link_configuration_id *)
  private_link_configuration_name : string option; [@option]
      (** private_link_configuration_name *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__frontend_ip_configuration *)

type azurerm_application_gateway__frontend_port = {
  id : string;  (** id *)
  name : string;  (** name *)
  port : float;  (** port *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__frontend_port *)

type azurerm_application_gateway__gateway_ip_configuration = {
  id : string;  (** id *)
  name : string;  (** name *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__gateway_ip_configuration *)

type azurerm_application_gateway__global = {
  request_buffering_enabled : bool;  (** request_buffering_enabled *)
  response_buffering_enabled : bool;
      (** response_buffering_enabled *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__global *)

type azurerm_application_gateway__http_listener__custom_error_configuration = {
  custom_error_page_url : string;  (** custom_error_page_url *)
  id : string;  (** id *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__http_listener__custom_error_configuration *)

type azurerm_application_gateway__http_listener = {
  firewall_policy_id : string option; [@option]
      (** firewall_policy_id *)
  frontend_ip_configuration_id : string;
      (** frontend_ip_configuration_id *)
  frontend_ip_configuration_name : string;
      (** frontend_ip_configuration_name *)
  frontend_port_id : string;  (** frontend_port_id *)
  frontend_port_name : string;  (** frontend_port_name *)
  host_name : string option; [@option]  (** host_name *)
  host_names : string list option; [@option]  (** host_names *)
  id : string;  (** id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  require_sni : bool option; [@option]  (** require_sni *)
  ssl_certificate_id : string;  (** ssl_certificate_id *)
  ssl_certificate_name : string option; [@option]
      (** ssl_certificate_name *)
  ssl_profile_id : string;  (** ssl_profile_id *)
  ssl_profile_name : string option; [@option]
      (** ssl_profile_name *)
  custom_error_configuration :
    azurerm_application_gateway__http_listener__custom_error_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__http_listener *)

type azurerm_application_gateway__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__identity *)

type azurerm_application_gateway__private_link_configuration__ip_configuration = {
  name : string;  (** name *)
  primary : bool;  (** primary *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string;
      (** private_ip_address_allocation *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__private_link_configuration__ip_configuration *)

type azurerm_application_gateway__private_link_configuration = {
  id : string;  (** id *)
  name : string;  (** name *)
  ip_configuration :
    azurerm_application_gateway__private_link_configuration__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__private_link_configuration *)

type azurerm_application_gateway__probe__match = {
  body : string option; [@option]  (** body *)
  status_code : string list;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__probe__match *)

type azurerm_application_gateway__probe = {
  host : string option; [@option]  (** host *)
  id : string;  (** id *)
  interval : float;  (** interval *)
  minimum_servers : float option; [@option]  (** minimum_servers *)
  name : string;  (** name *)
  path : string;  (** path *)
  pick_host_name_from_backend_http_settings : bool option; [@option]
      (** pick_host_name_from_backend_http_settings *)
  port : float option; [@option]  (** port *)
  protocol : string;  (** protocol *)
  timeout : float;  (** timeout *)
  unhealthy_threshold : float;  (** unhealthy_threshold *)
  match_ : azurerm_application_gateway__probe__match list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__probe *)

type azurerm_application_gateway__redirect_configuration = {
  id : string;  (** id *)
  include_path : bool option; [@option]  (** include_path *)
  include_query_string : bool option; [@option]
      (** include_query_string *)
  name : string;  (** name *)
  redirect_type : string;  (** redirect_type *)
  target_listener_id : string;  (** target_listener_id *)
  target_listener_name : string option; [@option]
      (** target_listener_name *)
  target_url : string option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__redirect_configuration *)

type azurerm_application_gateway__request_routing_rule = {
  backend_address_pool_id : string;  (** backend_address_pool_id *)
  backend_address_pool_name : string option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_id : string;  (** backend_http_settings_id *)
  backend_http_settings_name : string option; [@option]
      (** backend_http_settings_name *)
  http_listener_id : string;  (** http_listener_id *)
  http_listener_name : string;  (** http_listener_name *)
  id : string;  (** id *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  redirect_configuration_id : string;
      (** redirect_configuration_id *)
  redirect_configuration_name : string option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string option; [@option]
      (** rewrite_rule_set_name *)
  rule_type : string;  (** rule_type *)
  url_path_map_id : string;  (** url_path_map_id *)
  url_path_map_name : string option; [@option]
      (** url_path_map_name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__request_routing_rule *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool option; [@option]  (** ignore_case *)
  negate : bool option; [@option]  (** negate *)
  pattern : string;  (** pattern *)
  variable : string;  (** variable *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration = {
  header_name : string;  (** header_name *)
  header_value : string;  (** header_value *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration = {
  header_name : string;  (** header_name *)
  header_value : string;  (** header_value *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url = {
  components : string option; [@option]  (** components *)
  path : string option; [@option]  (** path *)
  query_string : string option; [@option]  (** query_string *)
  reroute : bool option; [@option]  (** reroute *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule = {
  name : string;  (** name *)
  rule_sequence : float;  (** rule_sequence *)
  condition :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition
    list;
  request_header_configuration :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration
    list;
  response_header_configuration :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration
    list;
  url :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule *)

type azurerm_application_gateway__rewrite_rule_set = {
  id : string;  (** id *)
  name : string;  (** name *)
  rewrite_rule :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set *)

type azurerm_application_gateway__sku = {
  capacity : float option; [@option]  (** capacity *)
  name : string;  (** name *)
  tier : string;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__sku *)

type azurerm_application_gateway__ssl_certificate = {
  data : string option; [@option]  (** data *)
  id : string;  (** id *)
  key_vault_secret_id : string option; [@option]
      (** key_vault_secret_id *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  public_cert_data : string;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_certificate *)

type azurerm_application_gateway__ssl_policy = {
  cipher_suites : string list option; [@option]  (** cipher_suites *)
  disabled_protocols : string list option; [@option]
      (** disabled_protocols *)
  min_protocol_version : string option; [@option]
      (** min_protocol_version *)
  policy_name : string option; [@option]  (** policy_name *)
  policy_type : string option; [@option]  (** policy_type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_policy *)

type azurerm_application_gateway__ssl_profile__ssl_policy = {
  cipher_suites : string list option; [@option]  (** cipher_suites *)
  disabled_protocols : string list option; [@option]
      (** disabled_protocols *)
  min_protocol_version : string option; [@option]
      (** min_protocol_version *)
  policy_name : string option; [@option]  (** policy_name *)
  policy_type : string option; [@option]  (** policy_type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_profile__ssl_policy *)

type azurerm_application_gateway__ssl_profile = {
  id : string;  (** id *)
  name : string;  (** name *)
  trusted_client_certificate_names : string list option; [@option]
      (** trusted_client_certificate_names *)
  verify_client_cert_issuer_dn : bool option; [@option]
      (** verify_client_cert_issuer_dn *)
  verify_client_certificate_revocation : string option; [@option]
      (** verify_client_certificate_revocation *)
  ssl_policy :
    azurerm_application_gateway__ssl_profile__ssl_policy list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_profile *)

type azurerm_application_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__timeouts *)

type azurerm_application_gateway__trusted_client_certificate = {
  data : string;  (** data *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__trusted_client_certificate *)

type azurerm_application_gateway__trusted_root_certificate = {
  data : string option; [@option]  (** data *)
  id : string;  (** id *)
  key_vault_secret_id : string option; [@option]
      (** key_vault_secret_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__trusted_root_certificate *)

type azurerm_application_gateway__url_path_map__path_rule = {
  backend_address_pool_id : string;  (** backend_address_pool_id *)
  backend_address_pool_name : string option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_id : string;  (** backend_http_settings_id *)
  backend_http_settings_name : string option; [@option]
      (** backend_http_settings_name *)
  firewall_policy_id : string option; [@option]
      (** firewall_policy_id *)
  id : string;  (** id *)
  name : string;  (** name *)
  paths : string list;  (** paths *)
  redirect_configuration_id : string;
      (** redirect_configuration_id *)
  redirect_configuration_name : string option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string option; [@option]
      (** rewrite_rule_set_name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__url_path_map__path_rule *)

type azurerm_application_gateway__url_path_map = {
  default_backend_address_pool_id : string;
      (** default_backend_address_pool_id *)
  default_backend_address_pool_name : string option; [@option]
      (** default_backend_address_pool_name *)
  default_backend_http_settings_id : string;
      (** default_backend_http_settings_id *)
  default_backend_http_settings_name : string option; [@option]
      (** default_backend_http_settings_name *)
  default_redirect_configuration_id : string;
      (** default_redirect_configuration_id *)
  default_redirect_configuration_name : string option; [@option]
      (** default_redirect_configuration_name *)
  default_rewrite_rule_set_id : string;
      (** default_rewrite_rule_set_id *)
  default_rewrite_rule_set_name : string option; [@option]
      (** default_rewrite_rule_set_name *)
  id : string;  (** id *)
  name : string;  (** name *)
  path_rule :
    azurerm_application_gateway__url_path_map__path_rule list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__url_path_map *)

type azurerm_application_gateway__waf_configuration__disabled_rule_group = {
  rule_group_name : string;  (** rule_group_name *)
  rules : float list option; [@option]  (** rules *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration__disabled_rule_group *)

type azurerm_application_gateway__waf_configuration__exclusion = {
  match_variable : string;  (** match_variable *)
  selector : string option; [@option]  (** selector *)
  selector_match_operator : string option; [@option]
      (** selector_match_operator *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration__exclusion *)

type azurerm_application_gateway__waf_configuration = {
  enabled : bool;  (** enabled *)
  file_upload_limit_mb : float option; [@option]
      (** file_upload_limit_mb *)
  firewall_mode : string;  (** firewall_mode *)
  max_request_body_size_kb : float option; [@option]
      (** max_request_body_size_kb *)
  request_body_check : bool option; [@option]
      (** request_body_check *)
  rule_set_type : string option; [@option]  (** rule_set_type *)
  rule_set_version : string;  (** rule_set_version *)
  disabled_rule_group :
    azurerm_application_gateway__waf_configuration__disabled_rule_group
    list;
  exclusion :
    azurerm_application_gateway__waf_configuration__exclusion list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration *)

type azurerm_application_gateway__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_application_gateway = {
  enable_http2 : bool option; [@option]  (** enable_http2 *)
  fips_enabled : bool option; [@option]  (** fips_enabled *)
  firewall_policy_id : string option; [@option]
      (** firewall_policy_id *)
  force_firewall_policy_association : bool option; [@option]
      (** force_firewall_policy_association *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
  authentication_certificate :
    azurerm_application_gateway__authentication_certificate list;
  autoscale_configuration :
    azurerm_application_gateway__autoscale_configuration list;
  backend_address_pool :
    azurerm_application_gateway__backend_address_pool list;
  backend_http_settings :
    azurerm_application_gateway__backend_http_settings list;
  custom_error_configuration :
    azurerm_application_gateway__custom_error_configuration list;
  frontend_ip_configuration :
    azurerm_application_gateway__frontend_ip_configuration list;
  frontend_port : azurerm_application_gateway__frontend_port list;
  gateway_ip_configuration :
    azurerm_application_gateway__gateway_ip_configuration list;
  global : azurerm_application_gateway__global list;
  http_listener : azurerm_application_gateway__http_listener list;
  identity : azurerm_application_gateway__identity list;
  private_link_configuration :
    azurerm_application_gateway__private_link_configuration list;
  probe : azurerm_application_gateway__probe list;
  redirect_configuration :
    azurerm_application_gateway__redirect_configuration list;
  request_routing_rule :
    azurerm_application_gateway__request_routing_rule list;
  rewrite_rule_set :
    azurerm_application_gateway__rewrite_rule_set list;
  sku : azurerm_application_gateway__sku list;
  ssl_certificate :
    azurerm_application_gateway__ssl_certificate list;
  ssl_policy : azurerm_application_gateway__ssl_policy list;
  ssl_profile : azurerm_application_gateway__ssl_profile list;
  timeouts : azurerm_application_gateway__timeouts option;
  trusted_client_certificate :
    azurerm_application_gateway__trusted_client_certificate list;
  trusted_root_certificate :
    azurerm_application_gateway__trusted_root_certificate list;
  url_path_map : azurerm_application_gateway__url_path_map list;
  waf_configuration :
    azurerm_application_gateway__waf_configuration list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway *)

let azurerm_application_gateway ?enable_http2 ?fips_enabled
    ?firewall_policy_id ?force_firewall_policy_association ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name
    ~authentication_certificate ~autoscale_configuration
    ~backend_address_pool ~backend_http_settings
    ~custom_error_configuration ~frontend_ip_configuration
    ~frontend_port ~gateway_ip_configuration ~global ~http_listener
    ~identity ~private_link_configuration ~probe
    ~redirect_configuration ~request_routing_rule ~rewrite_rule_set
    ~sku ~ssl_certificate ~ssl_policy ~ssl_profile
    ~trusted_client_certificate ~trusted_root_certificate
    ~url_path_map ~waf_configuration __resource_id =
  let __resource_type = "azurerm_application_gateway" in
  let __resource =
    {
      enable_http2;
      fips_enabled;
      firewall_policy_id;
      force_firewall_policy_association;
      location;
      name;
      resource_group_name;
      tags;
      zones;
      authentication_certificate;
      autoscale_configuration;
      backend_address_pool;
      backend_http_settings;
      custom_error_configuration;
      frontend_ip_configuration;
      frontend_port;
      gateway_ip_configuration;
      global;
      http_listener;
      identity;
      private_link_configuration;
      probe;
      redirect_configuration;
      request_routing_rule;
      rewrite_rule_set;
      sku;
      ssl_certificate;
      ssl_policy;
      ssl_profile;
      timeouts;
      trusted_client_certificate;
      trusted_root_certificate;
      url_path_map;
      waf_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_gateway __resource);
  ()

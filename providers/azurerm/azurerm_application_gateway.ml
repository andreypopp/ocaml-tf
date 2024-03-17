(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_gateway__authentication_certificate = {
  data : string prop;  (** data *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__authentication_certificate *)

type azurerm_application_gateway__autoscale_configuration = {
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__autoscale_configuration *)

type azurerm_application_gateway__backend_address_pool = {
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop;  (** id *)
  ip_addresses : string prop list option; [@option]
      (** ip_addresses *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_address_pool *)

type azurerm_application_gateway__backend_http_settings__authentication_certificate = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_http_settings__authentication_certificate *)

type azurerm_application_gateway__backend_http_settings__connection_draining = {
  drain_timeout_sec : float prop;  (** drain_timeout_sec *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__backend_http_settings__connection_draining *)

type azurerm_application_gateway__backend_http_settings = {
  affinity_cookie_name : string prop option; [@option]
      (** affinity_cookie_name *)
  cookie_based_affinity : string prop;  (** cookie_based_affinity *)
  host_name : string prop option; [@option]  (** host_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  pick_host_name_from_backend_address : bool prop option; [@option]
      (** pick_host_name_from_backend_address *)
  port : float prop;  (** port *)
  probe_id : string prop;  (** probe_id *)
  probe_name : string prop option; [@option]  (** probe_name *)
  protocol : string prop;  (** protocol *)
  request_timeout : float prop option; [@option]
      (** request_timeout *)
  trusted_root_certificate_names : string prop list option; [@option]
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
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  id : string prop;  (** id *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__custom_error_configuration *)

type azurerm_application_gateway__frontend_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop option; [@option]
      (** private_ip_address_allocation *)
  private_link_configuration_id : string prop;
      (** private_link_configuration_id *)
  private_link_configuration_name : string prop option; [@option]
      (** private_link_configuration_name *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__frontend_ip_configuration *)

type azurerm_application_gateway__frontend_port = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__frontend_port *)

type azurerm_application_gateway__gateway_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__gateway_ip_configuration *)

type azurerm_application_gateway__global = {
  request_buffering_enabled : bool prop;
      (** request_buffering_enabled *)
  response_buffering_enabled : bool prop;
      (** response_buffering_enabled *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__global *)

type azurerm_application_gateway__http_listener__custom_error_configuration = {
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  id : string prop;  (** id *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__http_listener__custom_error_configuration *)

type azurerm_application_gateway__http_listener = {
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  frontend_ip_configuration_id : string prop;
      (** frontend_ip_configuration_id *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port_id : string prop;  (** frontend_port_id *)
  frontend_port_name : string prop;  (** frontend_port_name *)
  host_name : string prop option; [@option]  (** host_name *)
  host_names : string prop list option; [@option]  (** host_names *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  require_sni : bool prop option; [@option]  (** require_sni *)
  ssl_certificate_id : string prop;  (** ssl_certificate_id *)
  ssl_certificate_name : string prop option; [@option]
      (** ssl_certificate_name *)
  ssl_profile_id : string prop;  (** ssl_profile_id *)
  ssl_profile_name : string prop option; [@option]
      (** ssl_profile_name *)
  custom_error_configuration :
    azurerm_application_gateway__http_listener__custom_error_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__http_listener *)

type azurerm_application_gateway__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__identity *)

type azurerm_application_gateway__private_link_configuration__ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__private_link_configuration__ip_configuration *)

type azurerm_application_gateway__private_link_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  ip_configuration :
    azurerm_application_gateway__private_link_configuration__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__private_link_configuration *)

type azurerm_application_gateway__probe__match = {
  body : string prop option; [@option]  (** body *)
  status_code : string prop list;  (** status_code *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__probe__match *)

type azurerm_application_gateway__probe = {
  host : string prop option; [@option]  (** host *)
  id : string prop;  (** id *)
  interval : float prop;  (** interval *)
  minimum_servers : float prop option; [@option]
      (** minimum_servers *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  pick_host_name_from_backend_http_settings : bool prop option;
      [@option]
      (** pick_host_name_from_backend_http_settings *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
  match_ : azurerm_application_gateway__probe__match list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__probe *)

type azurerm_application_gateway__redirect_configuration = {
  id : string prop;  (** id *)
  include_path : bool prop option; [@option]  (** include_path *)
  include_query_string : bool prop option; [@option]
      (** include_query_string *)
  name : string prop;  (** name *)
  redirect_type : string prop;  (** redirect_type *)
  target_listener_id : string prop;  (** target_listener_id *)
  target_listener_name : string prop option; [@option]
      (** target_listener_name *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__redirect_configuration *)

type azurerm_application_gateway__request_routing_rule = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  backend_address_pool_name : string prop option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_id : string prop;
      (** backend_http_settings_id *)
  backend_http_settings_name : string prop option; [@option]
      (** backend_http_settings_name *)
  http_listener_id : string prop;  (** http_listener_id *)
  http_listener_name : string prop;  (** http_listener_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  redirect_configuration_id : string prop;
      (** redirect_configuration_id *)
  redirect_configuration_name : string prop option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string prop;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string prop option; [@option]
      (** rewrite_rule_set_name *)
  rule_type : string prop;  (** rule_type *)
  url_path_map_id : string prop;  (** url_path_map_id *)
  url_path_map_name : string prop option; [@option]
      (** url_path_map_name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__request_routing_rule *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool prop option; [@option]  (** ignore_case *)
  negate : bool prop option; [@option]  (** negate *)
  pattern : string prop;  (** pattern *)
  variable : string prop;  (** variable *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__condition *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__request_header_configuration *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__response_header_configuration *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url = {
  components : string prop option; [@option]  (** components *)
  path : string prop option; [@option]  (** path *)
  query_string : string prop option; [@option]  (** query_string *)
  reroute : bool prop option; [@option]  (** reroute *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set__rewrite_rule__url *)

type azurerm_application_gateway__rewrite_rule_set__rewrite_rule = {
  name : string prop;  (** name *)
  rule_sequence : float prop;  (** rule_sequence *)
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
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  rewrite_rule :
    azurerm_application_gateway__rewrite_rule_set__rewrite_rule list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__rewrite_rule_set *)

type azurerm_application_gateway__sku = {
  capacity : float prop option; [@option]  (** capacity *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__sku *)

type azurerm_application_gateway__ssl_certificate = {
  data : string prop option; [@option]  (** data *)
  id : string prop;  (** id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_certificate *)

type azurerm_application_gateway__ssl_policy = {
  cipher_suites : string prop list option; [@option]
      (** cipher_suites *)
  disabled_protocols : string prop list option; [@option]
      (** disabled_protocols *)
  min_protocol_version : string prop option; [@option]
      (** min_protocol_version *)
  policy_name : string prop option; [@option]  (** policy_name *)
  policy_type : string prop option; [@option]  (** policy_type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_policy *)

type azurerm_application_gateway__ssl_profile__ssl_policy = {
  cipher_suites : string prop list option; [@option]
      (** cipher_suites *)
  disabled_protocols : string prop list option; [@option]
      (** disabled_protocols *)
  min_protocol_version : string prop option; [@option]
      (** min_protocol_version *)
  policy_name : string prop option; [@option]  (** policy_name *)
  policy_type : string prop option; [@option]  (** policy_type *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_profile__ssl_policy *)

type azurerm_application_gateway__ssl_profile = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  trusted_client_certificate_names : string prop list option;
      [@option]
      (** trusted_client_certificate_names *)
  verify_client_cert_issuer_dn : bool prop option; [@option]
      (** verify_client_cert_issuer_dn *)
  verify_client_certificate_revocation : string prop option;
      [@option]
      (** verify_client_certificate_revocation *)
  ssl_policy :
    azurerm_application_gateway__ssl_profile__ssl_policy list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__ssl_profile *)

type azurerm_application_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__timeouts *)

type azurerm_application_gateway__trusted_client_certificate = {
  data : string prop;  (** data *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__trusted_client_certificate *)

type azurerm_application_gateway__trusted_root_certificate = {
  data : string prop option; [@option]  (** data *)
  id : string prop;  (** id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__trusted_root_certificate *)

type azurerm_application_gateway__url_path_map__path_rule = {
  backend_address_pool_id : string prop;
      (** backend_address_pool_id *)
  backend_address_pool_name : string prop option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_id : string prop;
      (** backend_http_settings_id *)
  backend_http_settings_name : string prop option; [@option]
      (** backend_http_settings_name *)
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  paths : string prop list;  (** paths *)
  redirect_configuration_id : string prop;
      (** redirect_configuration_id *)
  redirect_configuration_name : string prop option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_id : string prop;  (** rewrite_rule_set_id *)
  rewrite_rule_set_name : string prop option; [@option]
      (** rewrite_rule_set_name *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__url_path_map__path_rule *)

type azurerm_application_gateway__url_path_map = {
  default_backend_address_pool_id : string prop;
      (** default_backend_address_pool_id *)
  default_backend_address_pool_name : string prop option; [@option]
      (** default_backend_address_pool_name *)
  default_backend_http_settings_id : string prop;
      (** default_backend_http_settings_id *)
  default_backend_http_settings_name : string prop option; [@option]
      (** default_backend_http_settings_name *)
  default_redirect_configuration_id : string prop;
      (** default_redirect_configuration_id *)
  default_redirect_configuration_name : string prop option; [@option]
      (** default_redirect_configuration_name *)
  default_rewrite_rule_set_id : string prop;
      (** default_rewrite_rule_set_id *)
  default_rewrite_rule_set_name : string prop option; [@option]
      (** default_rewrite_rule_set_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  path_rule :
    azurerm_application_gateway__url_path_map__path_rule list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__url_path_map *)

type azurerm_application_gateway__waf_configuration__disabled_rule_group = {
  rule_group_name : string prop;  (** rule_group_name *)
  rules : float prop list option; [@option]  (** rules *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration__disabled_rule_group *)

type azurerm_application_gateway__waf_configuration__exclusion = {
  match_variable : string prop;  (** match_variable *)
  selector : string prop option; [@option]  (** selector *)
  selector_match_operator : string prop option; [@option]
      (** selector_match_operator *)
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration__exclusion *)

type azurerm_application_gateway__waf_configuration = {
  enabled : bool prop;  (** enabled *)
  file_upload_limit_mb : float prop option; [@option]
      (** file_upload_limit_mb *)
  firewall_mode : string prop;  (** firewall_mode *)
  max_request_body_size_kb : float prop option; [@option]
      (** max_request_body_size_kb *)
  request_body_check : bool prop option; [@option]
      (** request_body_check *)
  rule_set_type : string prop option; [@option]  (** rule_set_type *)
  rule_set_version : string prop;  (** rule_set_version *)
  disabled_rule_group :
    azurerm_application_gateway__waf_configuration__disabled_rule_group
    list;
  exclusion :
    azurerm_application_gateway__waf_configuration__exclusion list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway__waf_configuration *)

type azurerm_application_gateway__private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_application_gateway = {
  enable_http2 : bool prop option; [@option]  (** enable_http2 *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  force_firewall_policy_association : bool prop option; [@option]
      (** force_firewall_policy_association *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
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

type t = {
  enable_http2 : bool prop;
  fips_enabled : bool prop;
  firewall_policy_id : string prop;
  force_firewall_policy_association : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    azurerm_application_gateway__private_endpoint_connection list
    prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let azurerm_application_gateway ?enable_http2 ?fips_enabled
    ?firewall_policy_id ?force_firewall_policy_association ?id ?tags
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
    ({
       enable_http2;
       fips_enabled;
       firewall_policy_id;
       force_firewall_policy_association;
       id;
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
      : azurerm_application_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_gateway __resource);
  let __resource_attributes =
    ({
       enable_http2 =
         Prop.computed __resource_type __resource_id "enable_http2";
       fips_enabled =
         Prop.computed __resource_type __resource_id "fips_enabled";
       firewall_policy_id =
         Prop.computed __resource_type __resource_id
           "firewall_policy_id";
       force_firewall_policy_association =
         Prop.computed __resource_type __resource_id
           "force_firewall_policy_association";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_endpoint_connection =
         Prop.computed __resource_type __resource_id
           "private_endpoint_connection";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

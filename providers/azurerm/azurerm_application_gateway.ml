(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type authentication_certificate = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** authentication_certificate *)

type autoscale_configuration = {
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** autoscale_configuration *)

type backend_address_pool = {
  fqdns : string prop list option; [@option]  (** fqdns *)
  ip_addresses : string prop list option; [@option]
      (** ip_addresses *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** backend_address_pool *)

type backend_http_settings__authentication_certificate = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** backend_http_settings__authentication_certificate *)

type backend_http_settings__connection_draining = {
  drain_timeout_sec : float prop;  (** drain_timeout_sec *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** backend_http_settings__connection_draining *)

type backend_http_settings = {
  affinity_cookie_name : string prop option; [@option]
      (** affinity_cookie_name *)
  cookie_based_affinity : string prop;  (** cookie_based_affinity *)
  host_name : string prop option; [@option]  (** host_name *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  pick_host_name_from_backend_address : bool prop option; [@option]
      (** pick_host_name_from_backend_address *)
  port : float prop;  (** port *)
  probe_name : string prop option; [@option]  (** probe_name *)
  protocol : string prop;  (** protocol *)
  request_timeout : float prop option; [@option]
      (** request_timeout *)
  trusted_root_certificate_names : string prop list option; [@option]
      (** trusted_root_certificate_names *)
  authentication_certificate :
    backend_http_settings__authentication_certificate list;
  connection_draining :
    backend_http_settings__connection_draining list;
}
[@@deriving yojson_of]
(** backend_http_settings *)

type custom_error_configuration = {
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** custom_error_configuration *)

type frontend_ip_configuration = {
  name : string prop;  (** name *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop option; [@option]
      (** private_ip_address_allocation *)
  private_link_configuration_name : string prop option; [@option]
      (** private_link_configuration_name *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** frontend_ip_configuration *)

type frontend_port = {
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** frontend_port *)

type gateway_ip_configuration = {
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** gateway_ip_configuration *)

type global = {
  request_buffering_enabled : bool prop;
      (** request_buffering_enabled *)
  response_buffering_enabled : bool prop;
      (** response_buffering_enabled *)
}
[@@deriving yojson_of]
(** global *)

type http_listener__custom_error_configuration = {
  custom_error_page_url : string prop;  (** custom_error_page_url *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** http_listener__custom_error_configuration *)

type http_listener = {
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  frontend_ip_configuration_name : string prop;
      (** frontend_ip_configuration_name *)
  frontend_port_name : string prop;  (** frontend_port_name *)
  host_name : string prop option; [@option]  (** host_name *)
  host_names : string prop list option; [@option]  (** host_names *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  require_sni : bool prop option; [@option]  (** require_sni *)
  ssl_certificate_name : string prop option; [@option]
      (** ssl_certificate_name *)
  ssl_profile_name : string prop option; [@option]
      (** ssl_profile_name *)
  custom_error_configuration :
    http_listener__custom_error_configuration list;
}
[@@deriving yojson_of]
(** http_listener *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type private_link_configuration__ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** private_link_configuration__ip_configuration *)

type private_link_configuration = {
  name : string prop;  (** name *)
  ip_configuration :
    private_link_configuration__ip_configuration list;
}
[@@deriving yojson_of]
(** private_link_configuration *)

type probe__match = {
  body : string prop option; [@option]  (** body *)
  status_code : string prop list;  (** status_code *)
}
[@@deriving yojson_of]
(** probe__match *)

type probe = {
  host : string prop option; [@option]  (** host *)
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
  match_ : probe__match list;
}
[@@deriving yojson_of]
(** probe *)

type redirect_configuration = {
  include_path : bool prop option; [@option]  (** include_path *)
  include_query_string : bool prop option; [@option]
      (** include_query_string *)
  name : string prop;  (** name *)
  redirect_type : string prop;  (** redirect_type *)
  target_listener_name : string prop option; [@option]
      (** target_listener_name *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** redirect_configuration *)

type request_routing_rule = {
  backend_address_pool_name : string prop option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_name : string prop option; [@option]
      (** backend_http_settings_name *)
  http_listener_name : string prop;  (** http_listener_name *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  redirect_configuration_name : string prop option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_name : string prop option; [@option]
      (** rewrite_rule_set_name *)
  rule_type : string prop;  (** rule_type *)
  url_path_map_name : string prop option; [@option]
      (** url_path_map_name *)
}
[@@deriving yojson_of]
(** request_routing_rule *)

type rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool prop option; [@option]  (** ignore_case *)
  negate : bool prop option; [@option]  (** negate *)
  pattern : string prop;  (** pattern *)
  variable : string prop;  (** variable *)
}
[@@deriving yojson_of]
(** rewrite_rule_set__rewrite_rule__condition *)

type rewrite_rule_set__rewrite_rule__request_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}
[@@deriving yojson_of]
(** rewrite_rule_set__rewrite_rule__request_header_configuration *)

type rewrite_rule_set__rewrite_rule__response_header_configuration = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}
[@@deriving yojson_of]
(** rewrite_rule_set__rewrite_rule__response_header_configuration *)

type rewrite_rule_set__rewrite_rule__url = {
  components : string prop option; [@option]  (** components *)
  path : string prop option; [@option]  (** path *)
  query_string : string prop option; [@option]  (** query_string *)
  reroute : bool prop option; [@option]  (** reroute *)
}
[@@deriving yojson_of]
(** rewrite_rule_set__rewrite_rule__url *)

type rewrite_rule_set__rewrite_rule = {
  name : string prop;  (** name *)
  rule_sequence : float prop;  (** rule_sequence *)
  condition : rewrite_rule_set__rewrite_rule__condition list;
  request_header_configuration :
    rewrite_rule_set__rewrite_rule__request_header_configuration list;
  response_header_configuration :
    rewrite_rule_set__rewrite_rule__response_header_configuration
    list;
  url : rewrite_rule_set__rewrite_rule__url list;
}
[@@deriving yojson_of]
(** rewrite_rule_set__rewrite_rule *)

type rewrite_rule_set = {
  name : string prop;  (** name *)
  rewrite_rule : rewrite_rule_set__rewrite_rule list;
}
[@@deriving yojson_of]
(** rewrite_rule_set *)

type sku = {
  capacity : float prop option; [@option]  (** capacity *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** sku *)

type ssl_certificate = {
  data : string prop option; [@option]  (** data *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
}
[@@deriving yojson_of]
(** ssl_certificate *)

type ssl_policy = {
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
(** ssl_policy *)

type ssl_profile__ssl_policy = {
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
(** ssl_profile__ssl_policy *)

type ssl_profile = {
  name : string prop;  (** name *)
  trusted_client_certificate_names : string prop list option;
      [@option]
      (** trusted_client_certificate_names *)
  verify_client_cert_issuer_dn : bool prop option; [@option]
      (** verify_client_cert_issuer_dn *)
  verify_client_certificate_revocation : string prop option;
      [@option]
      (** verify_client_certificate_revocation *)
  ssl_policy : ssl_profile__ssl_policy list;
}
[@@deriving yojson_of]
(** ssl_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trusted_client_certificate = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** trusted_client_certificate *)

type trusted_root_certificate = {
  data : string prop option; [@option]  (** data *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** trusted_root_certificate *)

type url_path_map__path_rule = {
  backend_address_pool_name : string prop option; [@option]
      (** backend_address_pool_name *)
  backend_http_settings_name : string prop option; [@option]
      (** backend_http_settings_name *)
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  name : string prop;  (** name *)
  paths : string prop list;  (** paths *)
  redirect_configuration_name : string prop option; [@option]
      (** redirect_configuration_name *)
  rewrite_rule_set_name : string prop option; [@option]
      (** rewrite_rule_set_name *)
}
[@@deriving yojson_of]
(** url_path_map__path_rule *)

type url_path_map = {
  default_backend_address_pool_name : string prop option; [@option]
      (** default_backend_address_pool_name *)
  default_backend_http_settings_name : string prop option; [@option]
      (** default_backend_http_settings_name *)
  default_redirect_configuration_name : string prop option; [@option]
      (** default_redirect_configuration_name *)
  default_rewrite_rule_set_name : string prop option; [@option]
      (** default_rewrite_rule_set_name *)
  name : string prop;  (** name *)
  path_rule : url_path_map__path_rule list;
}
[@@deriving yojson_of]
(** url_path_map *)

type waf_configuration__disabled_rule_group = {
  rule_group_name : string prop;  (** rule_group_name *)
  rules : float prop list option; [@option]  (** rules *)
}
[@@deriving yojson_of]
(** waf_configuration__disabled_rule_group *)

type waf_configuration__exclusion = {
  match_variable : string prop;  (** match_variable *)
  selector : string prop option; [@option]  (** selector *)
  selector_match_operator : string prop option; [@option]
      (** selector_match_operator *)
}
[@@deriving yojson_of]
(** waf_configuration__exclusion *)

type waf_configuration = {
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
  disabled_rule_group : waf_configuration__disabled_rule_group list;
  exclusion : waf_configuration__exclusion list;
}
[@@deriving yojson_of]
(** waf_configuration *)

type private_endpoint_connection = {
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
  authentication_certificate : authentication_certificate list;
  autoscale_configuration : autoscale_configuration list;
  backend_address_pool : backend_address_pool list;
  backend_http_settings : backend_http_settings list;
  custom_error_configuration : custom_error_configuration list;
  frontend_ip_configuration : frontend_ip_configuration list;
  frontend_port : frontend_port list;
  gateway_ip_configuration : gateway_ip_configuration list;
  global : global list;
  http_listener : http_listener list;
  identity : identity list;
  private_link_configuration : private_link_configuration list;
  probe : probe list;
  redirect_configuration : redirect_configuration list;
  request_routing_rule : request_routing_rule list;
  rewrite_rule_set : rewrite_rule_set list;
  sku : sku list;
  ssl_certificate : ssl_certificate list;
  ssl_policy : ssl_policy list;
  ssl_profile : ssl_profile list;
  timeouts : timeouts option;
  trusted_client_certificate : trusted_client_certificate list;
  trusted_root_certificate : trusted_root_certificate list;
  url_path_map : url_path_map list;
  waf_configuration : waf_configuration list;
}
[@@deriving yojson_of]
(** azurerm_application_gateway *)

let authentication_certificate ~data ~name () :
    authentication_certificate =
  { data; name }

let autoscale_configuration ?max_capacity ~min_capacity () :
    autoscale_configuration =
  { max_capacity; min_capacity }

let backend_address_pool ?fqdns ?ip_addresses ~name () :
    backend_address_pool =
  { fqdns; ip_addresses; name }

let backend_http_settings__authentication_certificate ~name () :
    backend_http_settings__authentication_certificate =
  { name }

let backend_http_settings__connection_draining ~drain_timeout_sec
    ~enabled () : backend_http_settings__connection_draining =
  { drain_timeout_sec; enabled }

let backend_http_settings ?affinity_cookie_name ?host_name ?path
    ?pick_host_name_from_backend_address ?probe_name ?request_timeout
    ?trusted_root_certificate_names ~cookie_based_affinity ~name
    ~port ~protocol ~authentication_certificate ~connection_draining
    () : backend_http_settings =
  {
    affinity_cookie_name;
    cookie_based_affinity;
    host_name;
    name;
    path;
    pick_host_name_from_backend_address;
    port;
    probe_name;
    protocol;
    request_timeout;
    trusted_root_certificate_names;
    authentication_certificate;
    connection_draining;
  }

let custom_error_configuration ~custom_error_page_url ~status_code ()
    : custom_error_configuration =
  { custom_error_page_url; status_code }

let frontend_ip_configuration ?private_ip_address
    ?private_ip_address_allocation ?private_link_configuration_name
    ?public_ip_address_id ?subnet_id ~name () :
    frontend_ip_configuration =
  {
    name;
    private_ip_address;
    private_ip_address_allocation;
    private_link_configuration_name;
    public_ip_address_id;
    subnet_id;
  }

let frontend_port ~name ~port () : frontend_port = { name; port }

let gateway_ip_configuration ~name ~subnet_id () :
    gateway_ip_configuration =
  { name; subnet_id }

let global ~request_buffering_enabled ~response_buffering_enabled ()
    : global =
  { request_buffering_enabled; response_buffering_enabled }

let http_listener__custom_error_configuration ~custom_error_page_url
    ~status_code () : http_listener__custom_error_configuration =
  { custom_error_page_url; status_code }

let http_listener ?firewall_policy_id ?host_name ?host_names
    ?require_sni ?ssl_certificate_name ?ssl_profile_name
    ~frontend_ip_configuration_name ~frontend_port_name ~name
    ~protocol ~custom_error_configuration () : http_listener =
  {
    firewall_policy_id;
    frontend_ip_configuration_name;
    frontend_port_name;
    host_name;
    host_names;
    name;
    protocol;
    require_sni;
    ssl_certificate_name;
    ssl_profile_name;
    custom_error_configuration;
  }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let private_link_configuration__ip_configuration ?private_ip_address
    ~name ~primary ~private_ip_address_allocation ~subnet_id () :
    private_link_configuration__ip_configuration =
  {
    name;
    primary;
    private_ip_address;
    private_ip_address_allocation;
    subnet_id;
  }

let private_link_configuration ~name ~ip_configuration () :
    private_link_configuration =
  { name; ip_configuration }

let probe__match ?body ~status_code () : probe__match =
  { body; status_code }

let probe ?host ?minimum_servers
    ?pick_host_name_from_backend_http_settings ?port ~interval ~name
    ~path ~protocol ~timeout ~unhealthy_threshold ~match_ () : probe
    =
  {
    host;
    interval;
    minimum_servers;
    name;
    path;
    pick_host_name_from_backend_http_settings;
    port;
    protocol;
    timeout;
    unhealthy_threshold;
    match_;
  }

let redirect_configuration ?include_path ?include_query_string
    ?target_listener_name ?target_url ~name ~redirect_type () :
    redirect_configuration =
  {
    include_path;
    include_query_string;
    name;
    redirect_type;
    target_listener_name;
    target_url;
  }

let request_routing_rule ?backend_address_pool_name
    ?backend_http_settings_name ?priority
    ?redirect_configuration_name ?rewrite_rule_set_name
    ?url_path_map_name ~http_listener_name ~name ~rule_type () :
    request_routing_rule =
  {
    backend_address_pool_name;
    backend_http_settings_name;
    http_listener_name;
    name;
    priority;
    redirect_configuration_name;
    rewrite_rule_set_name;
    rule_type;
    url_path_map_name;
  }

let rewrite_rule_set__rewrite_rule__condition ?ignore_case ?negate
    ~pattern ~variable () : rewrite_rule_set__rewrite_rule__condition
    =
  { ignore_case; negate; pattern; variable }

let rewrite_rule_set__rewrite_rule__request_header_configuration
    ~header_name ~header_value () :
    rewrite_rule_set__rewrite_rule__request_header_configuration =
  { header_name; header_value }

let rewrite_rule_set__rewrite_rule__response_header_configuration
    ~header_name ~header_value () :
    rewrite_rule_set__rewrite_rule__response_header_configuration =
  { header_name; header_value }

let rewrite_rule_set__rewrite_rule__url ?components ?path
    ?query_string ?reroute () : rewrite_rule_set__rewrite_rule__url =
  { components; path; query_string; reroute }

let rewrite_rule_set__rewrite_rule ~name ~rule_sequence ~condition
    ~request_header_configuration ~response_header_configuration ~url
    () : rewrite_rule_set__rewrite_rule =
  {
    name;
    rule_sequence;
    condition;
    request_header_configuration;
    response_header_configuration;
    url;
  }

let rewrite_rule_set ~name ~rewrite_rule () : rewrite_rule_set =
  { name; rewrite_rule }

let sku ?capacity ~name ~tier () : sku = { capacity; name; tier }

let ssl_certificate ?data ?key_vault_secret_id ?password ~name () :
    ssl_certificate =
  { data; key_vault_secret_id; name; password }

let ssl_policy ?cipher_suites ?disabled_protocols
    ?min_protocol_version ?policy_name ?policy_type () : ssl_policy =
  {
    cipher_suites;
    disabled_protocols;
    min_protocol_version;
    policy_name;
    policy_type;
  }

let ssl_profile__ssl_policy ?cipher_suites ?disabled_protocols
    ?min_protocol_version ?policy_name ?policy_type () :
    ssl_profile__ssl_policy =
  {
    cipher_suites;
    disabled_protocols;
    min_protocol_version;
    policy_name;
    policy_type;
  }

let ssl_profile ?trusted_client_certificate_names
    ?verify_client_cert_issuer_dn
    ?verify_client_certificate_revocation ~name ~ssl_policy () :
    ssl_profile =
  {
    name;
    trusted_client_certificate_names;
    verify_client_cert_issuer_dn;
    verify_client_certificate_revocation;
    ssl_policy;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trusted_client_certificate ~data ~name () :
    trusted_client_certificate =
  { data; name }

let trusted_root_certificate ?data ?key_vault_secret_id ~name () :
    trusted_root_certificate =
  { data; key_vault_secret_id; name }

let url_path_map__path_rule ?backend_address_pool_name
    ?backend_http_settings_name ?firewall_policy_id
    ?redirect_configuration_name ?rewrite_rule_set_name ~name ~paths
    () : url_path_map__path_rule =
  {
    backend_address_pool_name;
    backend_http_settings_name;
    firewall_policy_id;
    name;
    paths;
    redirect_configuration_name;
    rewrite_rule_set_name;
  }

let url_path_map ?default_backend_address_pool_name
    ?default_backend_http_settings_name
    ?default_redirect_configuration_name
    ?default_rewrite_rule_set_name ~name ~path_rule () : url_path_map
    =
  {
    default_backend_address_pool_name;
    default_backend_http_settings_name;
    default_redirect_configuration_name;
    default_rewrite_rule_set_name;
    name;
    path_rule;
  }

let waf_configuration__disabled_rule_group ?rules ~rule_group_name ()
    : waf_configuration__disabled_rule_group =
  { rule_group_name; rules }

let waf_configuration__exclusion ?selector ?selector_match_operator
    ~match_variable () : waf_configuration__exclusion =
  { match_variable; selector; selector_match_operator }

let waf_configuration ?file_upload_limit_mb ?max_request_body_size_kb
    ?request_body_check ?rule_set_type ~enabled ~firewall_mode
    ~rule_set_version ~disabled_rule_group ~exclusion () :
    waf_configuration =
  {
    enabled;
    file_upload_limit_mb;
    firewall_mode;
    max_request_body_size_kb;
    request_body_check;
    rule_set_type;
    rule_set_version;
    disabled_rule_group;
    exclusion;
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
    ~url_path_map ~waf_configuration () : azurerm_application_gateway
    =
  {
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

type t = {
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

let register ?tf_module ?enable_http2 ?fips_enabled
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
    azurerm_application_gateway ?enable_http2 ?fips_enabled
      ?firewall_policy_id ?force_firewall_policy_association ?id
      ?tags ?zones ?timeouts ~location ~name ~resource_group_name
      ~authentication_certificate ~autoscale_configuration
      ~backend_address_pool ~backend_http_settings
      ~custom_error_configuration ~frontend_ip_configuration
      ~frontend_port ~gateway_ip_configuration ~global ~http_listener
      ~identity ~private_link_configuration ~probe
      ~redirect_configuration ~request_routing_rule ~rewrite_rule_set
      ~sku ~ssl_certificate ~ssl_policy ~ssl_profile
      ~trusted_client_certificate ~trusted_root_certificate
      ~url_path_map ~waf_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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

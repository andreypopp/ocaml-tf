(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type authentication_certificate = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_certificate) -> ()

let yojson_of_authentication_certificate =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : authentication_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_certificate

[@@@deriving.end]

type autoscale_configuration = {
  max_capacity : float prop;
  min_capacity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscale_configuration) -> ()

let yojson_of_autoscale_configuration =
  (function
   | { max_capacity = v_max_capacity; min_capacity = v_min_capacity }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_capacity in
         ("min_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_capacity in
         ("max_capacity", arg) :: bnds
       in
       `Assoc bnds
    : autoscale_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscale_configuration

[@@@deriving.end]

type backend_address_pool = {
  fqdns : string prop list;
  id : string prop;
  ip_addresses : string prop list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_address_pool) -> ()

let yojson_of_backend_address_pool =
  (function
   | {
       fqdns = v_fqdns;
       id = v_id;
       ip_addresses = v_ip_addresses;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_fqdns
         in
         ("fqdns", arg) :: bnds
       in
       `Assoc bnds
    : backend_address_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_address_pool

[@@@deriving.end]

type backend_http_settings__connection_draining = {
  drain_timeout_sec : float prop;
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_http_settings__connection_draining) -> ()

let yojson_of_backend_http_settings__connection_draining =
  (function
   | { drain_timeout_sec = v_drain_timeout_sec; enabled = v_enabled }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_drain_timeout_sec
         in
         ("drain_timeout_sec", arg) :: bnds
       in
       `Assoc bnds
    : backend_http_settings__connection_draining ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_http_settings__connection_draining

[@@@deriving.end]

type backend_http_settings__authentication_certificate = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backend_http_settings__authentication_certificate) -> ()

let yojson_of_backend_http_settings__authentication_certificate =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : backend_http_settings__authentication_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_http_settings__authentication_certificate

[@@@deriving.end]

type backend_http_settings = {
  affinity_cookie_name : string prop;
  authentication_certificate :
    backend_http_settings__authentication_certificate list;
  connection_draining :
    backend_http_settings__connection_draining list;
  cookie_based_affinity : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  pick_host_name_from_backend_address : bool prop;
  port : float prop;
  probe_id : string prop;
  probe_name : string prop;
  protocol : string prop;
  request_timeout : float prop;
  trusted_root_certificate_names : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_http_settings) -> ()

let yojson_of_backend_http_settings =
  (function
   | {
       affinity_cookie_name = v_affinity_cookie_name;
       authentication_certificate = v_authentication_certificate;
       connection_draining = v_connection_draining;
       cookie_based_affinity = v_cookie_based_affinity;
       host_name = v_host_name;
       id = v_id;
       name = v_name;
       path = v_path;
       pick_host_name_from_backend_address =
         v_pick_host_name_from_backend_address;
       port = v_port;
       probe_id = v_probe_id;
       probe_name = v_probe_name;
       protocol = v_protocol;
       request_timeout = v_request_timeout;
       trusted_root_certificate_names =
         v_trusted_root_certificate_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_trusted_root_certificate_names
         in
         ("trusted_root_certificate_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_request_timeout
         in
         ("request_timeout", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_probe_name in
         ("probe_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_probe_id in
         ("probe_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_pick_host_name_from_backend_address
         in
         ("pick_host_name_from_backend_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cookie_based_affinity
         in
         ("cookie_based_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backend_http_settings__connection_draining
             v_connection_draining
         in
         ("connection_draining", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backend_http_settings__authentication_certificate
             v_authentication_certificate
         in
         ("authentication_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_affinity_cookie_name
         in
         ("affinity_cookie_name", arg) :: bnds
       in
       `Assoc bnds
    : backend_http_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_http_settings

[@@@deriving.end]

type custom_error_configuration = {
  custom_error_page_url : string prop;
  id : string prop;
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_error_configuration) -> ()

let yojson_of_custom_error_configuration =
  (function
   | {
       custom_error_page_url = v_custom_error_page_url;
       id = v_id;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_error_page_url
         in
         ("custom_error_page_url", arg) :: bnds
       in
       `Assoc bnds
    : custom_error_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_error_configuration

[@@@deriving.end]

type frontend_ip_configuration = {
  id : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_address_allocation : string prop;
  private_link_configuration_id : string prop;
  private_link_configuration_name : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_ip_configuration) -> ()

let yojson_of_frontend_ip_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       private_link_configuration_id =
         v_private_link_configuration_id;
       private_link_configuration_name =
         v_private_link_configuration_name;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_link_configuration_name
         in
         ("private_link_configuration_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_link_configuration_id
         in
         ("private_link_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_allocation
         in
         ("private_ip_address_allocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : frontend_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_ip_configuration

[@@@deriving.end]

type frontend_port = {
  id : string prop;
  name : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_port) -> ()

let yojson_of_frontend_port =
  (function
   | { id = v_id; name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : frontend_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_port

[@@@deriving.end]

type gateway_ip_configuration = {
  id : string prop;
  name : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway_ip_configuration) -> ()

let yojson_of_gateway_ip_configuration =
  (function
   | { id = v_id; name = v_name; subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : gateway_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway_ip_configuration

[@@@deriving.end]

type global = {
  request_buffering_enabled : bool prop;
  response_buffering_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global) -> ()

let yojson_of_global =
  (function
   | {
       request_buffering_enabled = v_request_buffering_enabled;
       response_buffering_enabled = v_response_buffering_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_response_buffering_enabled
         in
         ("response_buffering_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_request_buffering_enabled
         in
         ("request_buffering_enabled", arg) :: bnds
       in
       `Assoc bnds
    : global -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global

[@@@deriving.end]

type http_listener__custom_error_configuration = {
  custom_error_page_url : string prop;
  id : string prop;
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_listener__custom_error_configuration) -> ()

let yojson_of_http_listener__custom_error_configuration =
  (function
   | {
       custom_error_page_url = v_custom_error_page_url;
       id = v_id;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_error_page_url
         in
         ("custom_error_page_url", arg) :: bnds
       in
       `Assoc bnds
    : http_listener__custom_error_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_listener__custom_error_configuration

[@@@deriving.end]

type http_listener = {
  custom_error_configuration :
    http_listener__custom_error_configuration list;
  firewall_policy_id : string prop;
  frontend_ip_configuration_id : string prop;
  frontend_ip_configuration_name : string prop;
  frontend_port_id : string prop;
  frontend_port_name : string prop;
  host_name : string prop;
  host_names : string prop list;
  id : string prop;
  name : string prop;
  protocol : string prop;
  require_sni : bool prop;
  ssl_certificate_id : string prop;
  ssl_certificate_name : string prop;
  ssl_profile_id : string prop;
  ssl_profile_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_listener) -> ()

let yojson_of_http_listener =
  (function
   | {
       custom_error_configuration = v_custom_error_configuration;
       firewall_policy_id = v_firewall_policy_id;
       frontend_ip_configuration_id = v_frontend_ip_configuration_id;
       frontend_ip_configuration_name =
         v_frontend_ip_configuration_name;
       frontend_port_id = v_frontend_port_id;
       frontend_port_name = v_frontend_port_name;
       host_name = v_host_name;
       host_names = v_host_names;
       id = v_id;
       name = v_name;
       protocol = v_protocol;
       require_sni = v_require_sni;
       ssl_certificate_id = v_ssl_certificate_id;
       ssl_certificate_name = v_ssl_certificate_name;
       ssl_profile_id = v_ssl_profile_id;
       ssl_profile_name = v_ssl_profile_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_profile_name
         in
         ("ssl_profile_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_profile_id
         in
         ("ssl_profile_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_certificate_name
         in
         ("ssl_certificate_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_certificate_id
         in
         ("ssl_certificate_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_require_sni in
         ("require_sni", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_host_names
         in
         ("host_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frontend_port_name
         in
         ("frontend_port_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frontend_port_id
         in
         ("frontend_port_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_frontend_ip_configuration_name
         in
         ("frontend_ip_configuration_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_frontend_ip_configuration_id
         in
         ("frontend_ip_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_policy_id
         in
         ("firewall_policy_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_http_listener__custom_error_configuration
             v_custom_error_configuration
         in
         ("custom_error_configuration", arg) :: bnds
       in
       `Assoc bnds
    : http_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_listener

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type private_endpoint_connection = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_endpoint_connection) -> ()

let yojson_of_private_endpoint_connection =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : private_endpoint_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_endpoint_connection

[@@@deriving.end]

type private_link_configuration__ip_configuration = {
  name : string prop;
  primary : bool prop;
  private_ip_address : string prop;
  private_ip_address_allocation : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_configuration__ip_configuration) -> ()

let yojson_of_private_link_configuration__ip_configuration =
  (function
   | {
       name = v_name;
       primary = v_primary;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_allocation
         in
         ("private_ip_address_allocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : private_link_configuration__ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_configuration__ip_configuration

[@@@deriving.end]

type private_link_configuration = {
  id : string prop;
  ip_configuration :
    private_link_configuration__ip_configuration list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_configuration) -> ()

let yojson_of_private_link_configuration =
  (function
   | {
       id = v_id;
       ip_configuration = v_ip_configuration;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_private_link_configuration__ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : private_link_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_configuration

[@@@deriving.end]

type probe__match = {
  body : string prop;
  status_code : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : probe__match) -> ()

let yojson_of_probe__match =
  (function
   | { body = v_body; status_code = v_status_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_status_code
         in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : probe__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_probe__match

[@@@deriving.end]

type probe = {
  host : string prop;
  id : string prop;
  interval : float prop;
  match_ : probe__match list; [@key "match"]
  minimum_servers : float prop;
  name : string prop;
  path : string prop;
  pick_host_name_from_backend_http_settings : bool prop;
  port : float prop;
  protocol : string prop;
  timeout : float prop;
  unhealthy_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : probe) -> ()

let yojson_of_probe =
  (function
   | {
       host = v_host;
       id = v_id;
       interval = v_interval;
       match_ = v_match_;
       minimum_servers = v_minimum_servers;
       name = v_name;
       path = v_path;
       pick_host_name_from_backend_http_settings =
         v_pick_host_name_from_backend_http_settings;
       port = v_port;
       protocol = v_protocol;
       timeout = v_timeout;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_unhealthy_threshold
         in
         ("unhealthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_pick_host_name_from_backend_http_settings
         in
         ("pick_host_name_from_backend_http_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_minimum_servers
         in
         ("minimum_servers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_probe__match v_match_ in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_probe

[@@@deriving.end]

type redirect_configuration = {
  id : string prop;
  include_path : bool prop;
  include_query_string : bool prop;
  name : string prop;
  redirect_type : string prop;
  target_listener_id : string prop;
  target_listener_name : string prop;
  target_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redirect_configuration) -> ()

let yojson_of_redirect_configuration =
  (function
   | {
       id = v_id;
       include_path = v_include_path;
       include_query_string = v_include_query_string;
       name = v_name;
       redirect_type = v_redirect_type;
       target_listener_id = v_target_listener_id;
       target_listener_name = v_target_listener_name;
       target_url = v_target_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_url in
         ("target_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_listener_name
         in
         ("target_listener_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_listener_id
         in
         ("target_listener_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_type in
         ("redirect_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_query_string
         in
         ("include_query_string", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_path in
         ("include_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : redirect_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redirect_configuration

[@@@deriving.end]

type request_routing_rule = {
  backend_address_pool_id : string prop;
  backend_address_pool_name : string prop;
  backend_http_settings_id : string prop;
  backend_http_settings_name : string prop;
  http_listener_id : string prop;
  http_listener_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  redirect_configuration_id : string prop;
  redirect_configuration_name : string prop;
  rewrite_rule_set_id : string prop;
  rewrite_rule_set_name : string prop;
  rule_type : string prop;
  url_path_map_id : string prop;
  url_path_map_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_routing_rule) -> ()

let yojson_of_request_routing_rule =
  (function
   | {
       backend_address_pool_id = v_backend_address_pool_id;
       backend_address_pool_name = v_backend_address_pool_name;
       backend_http_settings_id = v_backend_http_settings_id;
       backend_http_settings_name = v_backend_http_settings_name;
       http_listener_id = v_http_listener_id;
       http_listener_name = v_http_listener_name;
       id = v_id;
       name = v_name;
       priority = v_priority;
       redirect_configuration_id = v_redirect_configuration_id;
       redirect_configuration_name = v_redirect_configuration_name;
       rewrite_rule_set_id = v_rewrite_rule_set_id;
       rewrite_rule_set_name = v_rewrite_rule_set_name;
       rule_type = v_rule_type;
       url_path_map_id = v_url_path_map_id;
       url_path_map_name = v_url_path_map_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_url_path_map_name
         in
         ("url_path_map_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_url_path_map_id
         in
         ("url_path_map_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_type in
         ("rule_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rewrite_rule_set_name
         in
         ("rewrite_rule_set_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rewrite_rule_set_id
         in
         ("rewrite_rule_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_redirect_configuration_name
         in
         ("redirect_configuration_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_redirect_configuration_id
         in
         ("redirect_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_listener_name
         in
         ("http_listener_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_listener_id
         in
         ("http_listener_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_backend_http_settings_name
         in
         ("backend_http_settings_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_http_settings_id
         in
         ("backend_http_settings_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_backend_address_pool_name
         in
         ("backend_address_pool_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_address_pool_id
         in
         ("backend_address_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : request_routing_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_routing_rule

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule__url = {
  components : string prop;
  path : string prop;
  query_string : string prop;
  reroute : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set__rewrite_rule__url) -> ()

let yojson_of_rewrite_rule_set__rewrite_rule__url =
  (function
   | {
       components = v_components;
       path = v_path;
       query_string = v_query_string;
       reroute = v_reroute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_reroute in
         ("reroute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_string in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_components in
         ("components", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule__url

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule__response_header_configuration = {
  header_name : string prop;
  header_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rewrite_rule_set__rewrite_rule__response_header_configuration) ->
  ()

let yojson_of_rewrite_rule_set__rewrite_rule__response_header_configuration
    =
  (function
   | { header_name = v_header_name; header_value = v_header_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__response_header_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rewrite_rule_set__rewrite_rule__response_header_configuration

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule__request_header_configuration = {
  header_name : string prop;
  header_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rewrite_rule_set__rewrite_rule__request_header_configuration) ->
  ()

let yojson_of_rewrite_rule_set__rewrite_rule__request_header_configuration
    =
  (function
   | { header_name = v_header_name; header_value = v_header_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__request_header_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rewrite_rule_set__rewrite_rule__request_header_configuration

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool prop;
  negate : bool prop;
  pattern : string prop;
  variable : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set__rewrite_rule__condition) -> ()

let yojson_of_rewrite_rule_set__rewrite_rule__condition =
  (function
   | {
       ignore_case = v_ignore_case;
       negate = v_negate;
       pattern = v_pattern;
       variable = v_variable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_variable in
         ("variable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_negate in
         ("negate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ignore_case in
         ("ignore_case", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule__condition

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule = {
  condition : rewrite_rule_set__rewrite_rule__condition list;
  name : string prop;
  request_header_configuration :
    rewrite_rule_set__rewrite_rule__request_header_configuration list;
  response_header_configuration :
    rewrite_rule_set__rewrite_rule__response_header_configuration
    list;
  rule_sequence : float prop;
  url : rewrite_rule_set__rewrite_rule__url list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set__rewrite_rule) -> ()

let yojson_of_rewrite_rule_set__rewrite_rule =
  (function
   | {
       condition = v_condition;
       name = v_name;
       request_header_configuration = v_request_header_configuration;
       response_header_configuration =
         v_response_header_configuration;
       rule_sequence = v_rule_sequence;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rewrite_rule_set__rewrite_rule__url v_url
         in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_sequence in
         ("rule_sequence", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rewrite_rule_set__rewrite_rule__response_header_configuration
             v_response_header_configuration
         in
         ("response_header_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rewrite_rule_set__rewrite_rule__request_header_configuration
             v_request_header_configuration
         in
         ("request_header_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rewrite_rule_set__rewrite_rule__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule

[@@@deriving.end]

type rewrite_rule_set = {
  id : string prop;
  name : string prop;
  rewrite_rule : rewrite_rule_set__rewrite_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set) -> ()

let yojson_of_rewrite_rule_set =
  (function
   | { id = v_id; name = v_name; rewrite_rule = v_rewrite_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rewrite_rule_set__rewrite_rule
             v_rewrite_rule
         in
         ("rewrite_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set

[@@@deriving.end]

type sku = {
  capacity : float prop;
  name : string prop;
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type ssl_certificate = {
  id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
  public_cert_data : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_certificate) -> ()

let yojson_of_ssl_certificate =
  (function
   | {
       id = v_id;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       public_cert_data = v_public_cert_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_cert_data
         in
         ("public_cert_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_secret_id
         in
         ("key_vault_secret_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : ssl_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_certificate

[@@@deriving.end]

type ssl_policy = {
  cipher_suites : string prop list;
  disabled_protocols : string prop list;
  min_protocol_version : string prop;
  policy_name : string prop;
  policy_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_policy) -> ()

let yojson_of_ssl_policy =
  (function
   | {
       cipher_suites = v_cipher_suites;
       disabled_protocols = v_disabled_protocols;
       min_protocol_version = v_min_protocol_version;
       policy_name = v_policy_name;
       policy_type = v_policy_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_protocol_version
         in
         ("min_protocol_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_disabled_protocols
         in
         ("disabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cipher_suites
         in
         ("cipher_suites", arg) :: bnds
       in
       `Assoc bnds
    : ssl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_policy

[@@@deriving.end]

type ssl_profile__ssl_policy = {
  cipher_suites : string prop list;
  disabled_protocols : string prop list;
  min_protocol_version : string prop;
  policy_name : string prop;
  policy_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_profile__ssl_policy) -> ()

let yojson_of_ssl_profile__ssl_policy =
  (function
   | {
       cipher_suites = v_cipher_suites;
       disabled_protocols = v_disabled_protocols;
       min_protocol_version = v_min_protocol_version;
       policy_name = v_policy_name;
       policy_type = v_policy_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_protocol_version
         in
         ("min_protocol_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_disabled_protocols
         in
         ("disabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cipher_suites
         in
         ("cipher_suites", arg) :: bnds
       in
       `Assoc bnds
    : ssl_profile__ssl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_profile__ssl_policy

[@@@deriving.end]

type ssl_profile = {
  id : string prop;
  name : string prop;
  ssl_policy : ssl_profile__ssl_policy list;
  trusted_client_certificate_names : string prop list;
  verify_client_certificate_issuer_dn : bool prop;
  verify_client_certificate_revocation : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_profile) -> ()

let yojson_of_ssl_profile =
  (function
   | {
       id = v_id;
       name = v_name;
       ssl_policy = v_ssl_policy;
       trusted_client_certificate_names =
         v_trusted_client_certificate_names;
       verify_client_certificate_issuer_dn =
         v_verify_client_certificate_issuer_dn;
       verify_client_certificate_revocation =
         v_verify_client_certificate_revocation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verify_client_certificate_revocation
         in
         ("verify_client_certificate_revocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_verify_client_certificate_issuer_dn
         in
         ("verify_client_certificate_issuer_dn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_trusted_client_certificate_names
         in
         ("trusted_client_certificate_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl_profile__ssl_policy
             v_ssl_policy
         in
         ("ssl_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : ssl_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_profile

[@@@deriving.end]

type trusted_client_certificate = {
  data : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_client_certificate) -> ()

let yojson_of_trusted_client_certificate =
  (function
   | { data = v_data; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : trusted_client_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_client_certificate

[@@@deriving.end]

type trusted_root_certificate = {
  id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_root_certificate) -> ()

let yojson_of_trusted_root_certificate =
  (function
   | {
       id = v_id;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_secret_id
         in
         ("key_vault_secret_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : trusted_root_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_root_certificate

[@@@deriving.end]

type url_path_map__path_rule = {
  backend_address_pool_id : string prop;
  backend_address_pool_name : string prop;
  backend_http_settings_id : string prop;
  backend_http_settings_name : string prop;
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  paths : string prop list;
  redirect_configuration_id : string prop;
  redirect_configuration_name : string prop;
  rewrite_rule_set_id : string prop;
  rewrite_rule_set_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : url_path_map__path_rule) -> ()

let yojson_of_url_path_map__path_rule =
  (function
   | {
       backend_address_pool_id = v_backend_address_pool_id;
       backend_address_pool_name = v_backend_address_pool_name;
       backend_http_settings_id = v_backend_http_settings_id;
       backend_http_settings_name = v_backend_http_settings_name;
       firewall_policy_id = v_firewall_policy_id;
       id = v_id;
       name = v_name;
       paths = v_paths;
       redirect_configuration_id = v_redirect_configuration_id;
       redirect_configuration_name = v_redirect_configuration_name;
       rewrite_rule_set_id = v_rewrite_rule_set_id;
       rewrite_rule_set_name = v_rewrite_rule_set_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rewrite_rule_set_name
         in
         ("rewrite_rule_set_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rewrite_rule_set_id
         in
         ("rewrite_rule_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_redirect_configuration_name
         in
         ("redirect_configuration_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_redirect_configuration_id
         in
         ("redirect_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_paths
         in
         ("paths", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_policy_id
         in
         ("firewall_policy_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_backend_http_settings_name
         in
         ("backend_http_settings_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_http_settings_id
         in
         ("backend_http_settings_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_backend_address_pool_name
         in
         ("backend_address_pool_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_address_pool_id
         in
         ("backend_address_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : url_path_map__path_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_url_path_map__path_rule

[@@@deriving.end]

type url_path_map = {
  default_backend_address_pool_id : string prop;
  default_backend_address_pool_name : string prop;
  default_backend_http_settings_id : string prop;
  default_backend_http_settings_name : string prop;
  default_redirect_configuration_id : string prop;
  default_redirect_configuration_name : string prop;
  default_rewrite_rule_set_id : string prop;
  default_rewrite_rule_set_name : string prop;
  id : string prop;
  name : string prop;
  path_rule : url_path_map__path_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : url_path_map) -> ()

let yojson_of_url_path_map =
  (function
   | {
       default_backend_address_pool_id =
         v_default_backend_address_pool_id;
       default_backend_address_pool_name =
         v_default_backend_address_pool_name;
       default_backend_http_settings_id =
         v_default_backend_http_settings_id;
       default_backend_http_settings_name =
         v_default_backend_http_settings_name;
       default_redirect_configuration_id =
         v_default_redirect_configuration_id;
       default_redirect_configuration_name =
         v_default_redirect_configuration_name;
       default_rewrite_rule_set_id = v_default_rewrite_rule_set_id;
       default_rewrite_rule_set_name =
         v_default_rewrite_rule_set_name;
       id = v_id;
       name = v_name;
       path_rule = v_path_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_url_path_map__path_rule
             v_path_rule
         in
         ("path_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_rewrite_rule_set_name
         in
         ("default_rewrite_rule_set_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_rewrite_rule_set_id
         in
         ("default_rewrite_rule_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_redirect_configuration_name
         in
         ("default_redirect_configuration_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_redirect_configuration_id
         in
         ("default_redirect_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_backend_http_settings_name
         in
         ("default_backend_http_settings_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_backend_http_settings_id
         in
         ("default_backend_http_settings_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_backend_address_pool_name
         in
         ("default_backend_address_pool_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_backend_address_pool_id
         in
         ("default_backend_address_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : url_path_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_url_path_map

[@@@deriving.end]

type waf_configuration__exclusion = {
  match_variable : string prop;
  selector : string prop;
  selector_match_operator : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : waf_configuration__exclusion) -> ()

let yojson_of_waf_configuration__exclusion =
  (function
   | {
       match_variable = v_match_variable;
       selector = v_selector;
       selector_match_operator = v_selector_match_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_selector_match_operator
         in
         ("selector_match_operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       `Assoc bnds
    : waf_configuration__exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_waf_configuration__exclusion

[@@@deriving.end]

type waf_configuration__disabled_rule_group = {
  rule_group_name : string prop;
  rules : float prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : waf_configuration__disabled_rule_group) -> ()

let yojson_of_waf_configuration__disabled_rule_group =
  (function
   | { rule_group_name = v_rule_group_name; rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_group_name
         in
         ("rule_group_name", arg) :: bnds
       in
       `Assoc bnds
    : waf_configuration__disabled_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_waf_configuration__disabled_rule_group

[@@@deriving.end]

type waf_configuration = {
  disabled_rule_group : waf_configuration__disabled_rule_group list;
  enabled : bool prop;
  exclusion : waf_configuration__exclusion list;
  file_upload_limit_mb : float prop;
  firewall_mode : string prop;
  max_request_body_size_kb : float prop;
  request_body_check : bool prop;
  rule_set_type : string prop;
  rule_set_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : waf_configuration) -> ()

let yojson_of_waf_configuration =
  (function
   | {
       disabled_rule_group = v_disabled_rule_group;
       enabled = v_enabled;
       exclusion = v_exclusion;
       file_upload_limit_mb = v_file_upload_limit_mb;
       firewall_mode = v_firewall_mode;
       max_request_body_size_kb = v_max_request_body_size_kb;
       request_body_check = v_request_body_check;
       rule_set_type = v_rule_set_type;
       rule_set_version = v_rule_set_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_set_version
         in
         ("rule_set_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_set_type in
         ("rule_set_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_request_body_check
         in
         ("request_body_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_request_body_size_kb
         in
         ("max_request_body_size_kb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_firewall_mode in
         ("firewall_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_file_upload_limit_mb
         in
         ("file_upload_limit_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_waf_configuration__exclusion
             v_exclusion
         in
         ("exclusion", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_waf_configuration__disabled_rule_group
             v_disabled_rule_group
         in
         ("disabled_rule_group", arg) :: bnds
       in
       `Assoc bnds
    : waf_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_waf_configuration

[@@@deriving.end]

type azurerm_application_gateway = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_gateway) -> ()

let yojson_of_azurerm_application_gateway =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_application_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_gateway

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_application_gateway ?id ?timeouts ~name
    ~resource_group_name () : azurerm_application_gateway =
  { id; name; resource_group_name; timeouts }

type t = {
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

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_application_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_certificate =
         Prop.computed __type __id "authentication_certificate";
       autoscale_configuration =
         Prop.computed __type __id "autoscale_configuration";
       backend_address_pool =
         Prop.computed __type __id "backend_address_pool";
       backend_http_settings =
         Prop.computed __type __id "backend_http_settings";
       custom_error_configuration =
         Prop.computed __type __id "custom_error_configuration";
       fips_enabled = Prop.computed __type __id "fips_enabled";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       force_firewall_policy_association =
         Prop.computed __type __id
           "force_firewall_policy_association";
       frontend_ip_configuration =
         Prop.computed __type __id "frontend_ip_configuration";
       frontend_port = Prop.computed __type __id "frontend_port";
       gateway_ip_configuration =
         Prop.computed __type __id "gateway_ip_configuration";
       global = Prop.computed __type __id "global";
       http2_enabled = Prop.computed __type __id "http2_enabled";
       http_listener = Prop.computed __type __id "http_listener";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_endpoint_connection =
         Prop.computed __type __id "private_endpoint_connection";
       private_link_configuration =
         Prop.computed __type __id "private_link_configuration";
       probe = Prop.computed __type __id "probe";
       redirect_configuration =
         Prop.computed __type __id "redirect_configuration";
       request_routing_rule =
         Prop.computed __type __id "request_routing_rule";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       rewrite_rule_set =
         Prop.computed __type __id "rewrite_rule_set";
       sku = Prop.computed __type __id "sku";
       ssl_certificate = Prop.computed __type __id "ssl_certificate";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       ssl_profile = Prop.computed __type __id "ssl_profile";
       tags = Prop.computed __type __id "tags";
       trusted_client_certificate =
         Prop.computed __type __id "trusted_client_certificate";
       trusted_root_certificate =
         Prop.computed __type __id "trusted_root_certificate";
       url_path_map = Prop.computed __type __id "url_path_map";
       waf_configuration =
         Prop.computed __type __id "waf_configuration";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_gateway
        (azurerm_application_gateway ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

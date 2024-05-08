(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_certificate = {
  data : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_certificate) -> ()

let yojson_of_authentication_certificate =
  (function
   | { data = v_data; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : authentication_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_certificate

[@@@deriving.end]

type autoscale_configuration = {
  max_capacity : float prop option; [@option]
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
         match v_max_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscale_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscale_configuration

[@@@deriving.end]

type backend_address_pool = {
  fqdns : string prop list option; [@option]
  ip_addresses : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_address_pool) -> ()

let yojson_of_backend_address_pool =
  (function
   | {
       fqdns = v_fqdns;
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
         match v_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_address_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_address_pool

[@@@deriving.end]

type backend_http_settings__authentication_certificate = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backend_http_settings__authentication_certificate) -> ()

let yojson_of_backend_http_settings__authentication_certificate =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : backend_http_settings__authentication_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_http_settings__authentication_certificate

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

type backend_http_settings = {
  affinity_cookie_name : string prop option; [@option]
  cookie_based_affinity : string prop;
  host_name : string prop option; [@option]
  name : string prop;
  path : string prop option; [@option]
  pick_host_name_from_backend_address : bool prop option; [@option]
  port : float prop;
  probe_name : string prop option; [@option]
  protocol : string prop;
  request_timeout : float prop option; [@option]
  trusted_root_certificate_names : string prop list option; [@option]
  authentication_certificate :
    backend_http_settings__authentication_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connection_draining :
    backend_http_settings__connection_draining list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_http_settings) -> ()

let yojson_of_backend_http_settings =
  (function
   | {
       affinity_cookie_name = v_affinity_cookie_name;
       cookie_based_affinity = v_cookie_based_affinity;
       host_name = v_host_name;
       name = v_name;
       path = v_path;
       pick_host_name_from_backend_address =
         v_pick_host_name_from_backend_address;
       port = v_port;
       probe_name = v_probe_name;
       protocol = v_protocol;
       request_timeout = v_request_timeout;
       trusted_root_certificate_names =
         v_trusted_root_certificate_names;
       authentication_certificate = v_authentication_certificate;
       connection_draining = v_connection_draining;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_connection_draining then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_http_settings__connection_draining)
               v_connection_draining
           in
           let bnd = "connection_draining", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_http_settings__authentication_certificate)
               v_authentication_certificate
           in
           let bnd = "authentication_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trusted_root_certificate_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_root_certificate_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "request_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_probe_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_pick_host_name_from_backend_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pick_host_name_from_backend_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cookie_based_affinity
         in
         ("cookie_based_affinity", arg) :: bnds
       in
       let bnds =
         match v_affinity_cookie_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "affinity_cookie_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_http_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_http_settings

[@@@deriving.end]

type custom_error_configuration = {
  custom_error_page_url : string prop;
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_error_configuration) -> ()

let yojson_of_custom_error_configuration =
  (function
   | {
       custom_error_page_url = v_custom_error_page_url;
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
  name : string prop;
  private_ip_address : string prop option; [@option]
  private_ip_address_allocation : string prop option; [@option]
  private_link_configuration_name : string prop option; [@option]
  public_ip_address_id : string prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_ip_configuration) -> ()

let yojson_of_frontend_ip_configuration =
  (function
   | {
       name = v_name;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       private_link_configuration_name =
         v_private_link_configuration_name;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_address_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_address_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_link_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_link_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address_allocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_allocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : frontend_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_ip_configuration

[@@@deriving.end]

type frontend_port = { name : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_port) -> ()

let yojson_of_frontend_port =
  (function
   | { name = v_name; port = v_port } ->
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
       `Assoc bnds
    : frontend_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_port

[@@@deriving.end]

type gateway_ip_configuration = {
  name : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway_ip_configuration) -> ()

let yojson_of_gateway_ip_configuration =
  (function
   | { name = v_name; subnet_id = v_subnet_id } ->
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
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_listener__custom_error_configuration) -> ()

let yojson_of_http_listener__custom_error_configuration =
  (function
   | {
       custom_error_page_url = v_custom_error_page_url;
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
  firewall_policy_id : string prop option; [@option]
  frontend_ip_configuration_name : string prop;
  frontend_port_name : string prop;
  host_name : string prop option; [@option]
  host_names : string prop list option; [@option]
  name : string prop;
  protocol : string prop;
  require_sni : bool prop option; [@option]
  ssl_certificate_name : string prop option; [@option]
  ssl_profile_name : string prop option; [@option]
  custom_error_configuration :
    http_listener__custom_error_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_listener) -> ()

let yojson_of_http_listener =
  (function
   | {
       firewall_policy_id = v_firewall_policy_id;
       frontend_ip_configuration_name =
         v_frontend_ip_configuration_name;
       frontend_port_name = v_frontend_port_name;
       host_name = v_host_name;
       host_names = v_host_names;
       name = v_name;
       protocol = v_protocol;
       require_sni = v_require_sni;
       ssl_certificate_name = v_ssl_certificate_name;
       ssl_profile_name = v_ssl_profile_name;
       custom_error_configuration = v_custom_error_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_error_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_listener__custom_error_configuration)
               v_custom_error_configuration
           in
           let bnd = "custom_error_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ssl_profile_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_profile_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_sni with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_sni", arg in
             bnd :: bnds
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
         match v_host_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "host_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frontend_port_name
         in
         ("frontend_port_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_frontend_ip_configuration_name
         in
         ("frontend_ip_configuration_name", arg) :: bnds
       in
       let bnds =
         match v_firewall_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_policy_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_listener

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type private_link_configuration__ip_configuration = {
  name : string prop;
  primary : bool prop;
  private_ip_address : string prop option; [@option]
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
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
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
  name : string prop;
  ip_configuration :
    private_link_configuration__ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_configuration) -> ()

let yojson_of_private_link_configuration =
  (function
   | { name = v_name; ip_configuration = v_ip_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_private_link_configuration__ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : private_link_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_configuration

[@@@deriving.end]

type probe__match = {
  body : string prop option; [@option]
  status_code : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_status_code then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_status_code
           in
           let bnd = "status_code", arg in
           bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : probe__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_probe__match

[@@@deriving.end]

type probe = {
  host : string prop option; [@option]
  interval : float prop;
  minimum_servers : float prop option; [@option]
  name : string prop;
  path : string prop;
  pick_host_name_from_backend_http_settings : bool prop option;
      [@option]
  port : float prop option; [@option]
  protocol : string prop;
  timeout : float prop;
  unhealthy_threshold : float prop;
  match_ : probe__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : probe) -> ()

let yojson_of_probe =
  (function
   | {
       host = v_host;
       interval = v_interval;
       minimum_servers = v_minimum_servers;
       name = v_name;
       path = v_path;
       pick_host_name_from_backend_http_settings =
         v_pick_host_name_from_backend_http_settings;
       port = v_port;
       protocol = v_protocol;
       timeout = v_timeout;
       unhealthy_threshold = v_unhealthy_threshold;
       match_ = v_match_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_probe__match) v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pick_host_name_from_backend_http_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "pick_host_name_from_backend_http_settings", arg
             in
             bnd :: bnds
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
         match v_minimum_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_servers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_probe

[@@@deriving.end]

type redirect_configuration = {
  include_path : bool prop option; [@option]
  include_query_string : bool prop option; [@option]
  name : string prop;
  redirect_type : string prop;
  target_listener_name : string prop option; [@option]
  target_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redirect_configuration) -> ()

let yojson_of_redirect_configuration =
  (function
   | {
       include_path = v_include_path;
       include_query_string = v_include_query_string;
       name = v_name;
       redirect_type = v_redirect_type;
       target_listener_name = v_target_listener_name;
       target_url = v_target_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_listener_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_listener_name", arg in
             bnd :: bnds
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
         match v_include_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redirect_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redirect_configuration

[@@@deriving.end]

type request_routing_rule = {
  backend_address_pool_name : string prop option; [@option]
  backend_http_settings_name : string prop option; [@option]
  http_listener_name : string prop;
  name : string prop;
  priority : float prop option; [@option]
  redirect_configuration_name : string prop option; [@option]
  rewrite_rule_set_name : string prop option; [@option]
  rule_type : string prop;
  url_path_map_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_routing_rule) -> ()

let yojson_of_request_routing_rule =
  (function
   | {
       backend_address_pool_name = v_backend_address_pool_name;
       backend_http_settings_name = v_backend_http_settings_name;
       http_listener_name = v_http_listener_name;
       name = v_name;
       priority = v_priority;
       redirect_configuration_name = v_redirect_configuration_name;
       rewrite_rule_set_name = v_rewrite_rule_set_name;
       rule_type = v_rule_type;
       url_path_map_name = v_url_path_map_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url_path_map_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_path_map_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_type in
         ("rule_type", arg) :: bnds
       in
       let bnds =
         match v_rewrite_rule_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rewrite_rule_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_listener_name
         in
         ("http_listener_name", arg) :: bnds
       in
       let bnds =
         match v_backend_http_settings_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_http_settings_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_address_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_address_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request_routing_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_routing_rule

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule__condition = {
  ignore_case : bool prop option; [@option]
  negate : bool prop option; [@option]
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
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_case with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_case", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule__condition

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

type rewrite_rule_set__rewrite_rule__url = {
  components : string prop option; [@option]
  path : string prop option; [@option]
  query_string : string prop option; [@option]
  reroute : bool prop option; [@option]
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
         match v_reroute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reroute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "components", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule__url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule__url

[@@@deriving.end]

type rewrite_rule_set__rewrite_rule = {
  name : string prop;
  rule_sequence : float prop;
  condition : rewrite_rule_set__rewrite_rule__condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_header_configuration :
    rewrite_rule_set__rewrite_rule__request_header_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response_header_configuration :
    rewrite_rule_set__rewrite_rule__response_header_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url : rewrite_rule_set__rewrite_rule__url list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set__rewrite_rule) -> ()

let yojson_of_rewrite_rule_set__rewrite_rule =
  (function
   | {
       name = v_name;
       rule_sequence = v_rule_sequence;
       condition = v_condition;
       request_header_configuration = v_request_header_configuration;
       response_header_configuration =
         v_response_header_configuration;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_url then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rewrite_rule_set__rewrite_rule__url)
               v_url
           in
           let bnd = "url", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_response_header_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rewrite_rule_set__rewrite_rule__response_header_configuration)
               v_response_header_configuration
           in
           let bnd = "response_header_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rewrite_rule_set__rewrite_rule__request_header_configuration)
               v_request_header_configuration
           in
           let bnd = "request_header_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rewrite_rule_set__rewrite_rule__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_sequence in
         ("rule_sequence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set__rewrite_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set__rewrite_rule

[@@@deriving.end]

type rewrite_rule_set = {
  name : string prop;
  rewrite_rule : rewrite_rule_set__rewrite_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rewrite_rule_set) -> ()

let yojson_of_rewrite_rule_set =
  (function
   | { name = v_name; rewrite_rule = v_rewrite_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rewrite_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rewrite_rule_set__rewrite_rule)
               v_rewrite_rule
           in
           let bnd = "rewrite_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : rewrite_rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rewrite_rule_set

[@@@deriving.end]

type sku = {
  capacity : float prop option; [@option]
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
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type ssl_certificate = {
  data : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_certificate) -> ()

let yojson_of_ssl_certificate =
  (function
   | {
       data = v_data;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       password = v_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_certificate

[@@@deriving.end]

type ssl_policy = {
  cipher_suites : string prop list option; [@option]
  disabled_protocols : string prop list option; [@option]
  min_protocol_version : string prop option; [@option]
  policy_name : string prop option; [@option]
  policy_type : string prop option; [@option]
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
         match v_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cipher_suites with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cipher_suites", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_policy

[@@@deriving.end]

type ssl_profile__ssl_policy = {
  cipher_suites : string prop list option; [@option]
  disabled_protocols : string prop list option; [@option]
  min_protocol_version : string prop option; [@option]
  policy_name : string prop option; [@option]
  policy_type : string prop option; [@option]
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
         match v_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cipher_suites with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cipher_suites", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_profile__ssl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_profile__ssl_policy

[@@@deriving.end]

type ssl_profile = {
  name : string prop;
  trusted_client_certificate_names : string prop list option;
      [@option]
  verify_client_cert_issuer_dn : bool prop option; [@option]
  verify_client_certificate_revocation : string prop option;
      [@option]
  ssl_policy : ssl_profile__ssl_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_profile) -> ()

let yojson_of_ssl_profile =
  (function
   | {
       name = v_name;
       trusted_client_certificate_names =
         v_trusted_client_certificate_names;
       verify_client_cert_issuer_dn = v_verify_client_cert_issuer_dn;
       verify_client_certificate_revocation =
         v_verify_client_certificate_revocation;
       ssl_policy = v_ssl_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssl_profile__ssl_policy)
               v_ssl_policy
           in
           let bnd = "ssl_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_verify_client_certificate_revocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verify_client_certificate_revocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_verify_client_cert_issuer_dn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify_client_cert_issuer_dn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_client_certificate_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_client_certificate_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : ssl_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_profile

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type trusted_client_certificate = {
  data : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_client_certificate) -> ()

let yojson_of_trusted_client_certificate =
  (function
   | { data = v_data; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
  data : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_root_certificate) -> ()

let yojson_of_trusted_root_certificate =
  (function
   | {
       data = v_data;
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
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trusted_root_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_root_certificate

[@@@deriving.end]

type url_path_map__path_rule = {
  backend_address_pool_name : string prop option; [@option]
  backend_http_settings_name : string prop option; [@option]
  firewall_policy_id : string prop option; [@option]
  name : string prop;
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redirect_configuration_name : string prop option; [@option]
  rewrite_rule_set_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : url_path_map__path_rule) -> ()

let yojson_of_url_path_map__path_rule =
  (function
   | {
       backend_address_pool_name = v_backend_address_pool_name;
       backend_http_settings_name = v_backend_http_settings_name;
       firewall_policy_id = v_firewall_policy_id;
       name = v_name;
       paths = v_paths;
       redirect_configuration_name = v_redirect_configuration_name;
       rewrite_rule_set_name = v_rewrite_rule_set_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rewrite_rule_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rewrite_rule_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_paths
           in
           let bnd = "paths", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_firewall_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_http_settings_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_http_settings_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_address_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_address_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : url_path_map__path_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_url_path_map__path_rule

[@@@deriving.end]

type url_path_map = {
  default_backend_address_pool_name : string prop option; [@option]
  default_backend_http_settings_name : string prop option; [@option]
  default_redirect_configuration_name : string prop option; [@option]
  default_rewrite_rule_set_name : string prop option; [@option]
  name : string prop;
  path_rule : url_path_map__path_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : url_path_map) -> ()

let yojson_of_url_path_map =
  (function
   | {
       default_backend_address_pool_name =
         v_default_backend_address_pool_name;
       default_backend_http_settings_name =
         v_default_backend_http_settings_name;
       default_redirect_configuration_name =
         v_default_redirect_configuration_name;
       default_rewrite_rule_set_name =
         v_default_rewrite_rule_set_name;
       name = v_name;
       path_rule = v_path_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_path_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_url_path_map__path_rule)
               v_path_rule
           in
           let bnd = "path_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_default_rewrite_rule_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_rewrite_rule_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_redirect_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_redirect_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_backend_http_settings_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_backend_http_settings_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_backend_address_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_backend_address_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : url_path_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_url_path_map

[@@@deriving.end]

type waf_configuration__disabled_rule_group = {
  rule_group_name : string prop;
  rules : float prop list option; [@option]
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
         match v_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "rules", arg in
             bnd :: bnds
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

type waf_configuration__exclusion = {
  match_variable : string prop;
  selector : string prop option; [@option]
  selector_match_operator : string prop option; [@option]
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
         match v_selector_match_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector_match_operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
             bnd :: bnds
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

type waf_configuration = {
  enabled : bool prop;
  file_upload_limit_mb : float prop option; [@option]
  firewall_mode : string prop;
  max_request_body_size_kb : float prop option; [@option]
  request_body_check : bool prop option; [@option]
  rule_set_type : string prop option; [@option]
  rule_set_version : string prop;
  disabled_rule_group : waf_configuration__disabled_rule_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exclusion : waf_configuration__exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : waf_configuration) -> ()

let yojson_of_waf_configuration =
  (function
   | {
       enabled = v_enabled;
       file_upload_limit_mb = v_file_upload_limit_mb;
       firewall_mode = v_firewall_mode;
       max_request_body_size_kb = v_max_request_body_size_kb;
       request_body_check = v_request_body_check;
       rule_set_type = v_rule_set_type;
       rule_set_version = v_rule_set_version;
       disabled_rule_group = v_disabled_rule_group;
       exclusion = v_exclusion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion then bnds
         else
           let arg =
             (yojson_of_list yojson_of_waf_configuration__exclusion)
               v_exclusion
           in
           let bnd = "exclusion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disabled_rule_group then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_waf_configuration__disabled_rule_group)
               v_disabled_rule_group
           in
           let bnd = "disabled_rule_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_set_version
         in
         ("rule_set_version", arg) :: bnds
       in
       let bnds =
         match v_rule_set_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_set_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_body_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_body_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_request_body_size_kb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_request_body_size_kb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_firewall_mode in
         ("firewall_mode", arg) :: bnds
       in
       let bnds =
         match v_file_upload_limit_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "file_upload_limit_mb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : waf_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_waf_configuration

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

type azurerm_application_gateway = {
  enable_http2 : bool prop option; [@option]
  fips_enabled : bool prop option; [@option]
  firewall_policy_id : string prop option; [@option]
  force_firewall_policy_association : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  zones : string prop list option; [@option]
  authentication_certificate : authentication_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  autoscale_configuration : autoscale_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backend_address_pool : backend_address_pool list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backend_http_settings : backend_http_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_error_configuration : custom_error_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frontend_ip_configuration : frontend_ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frontend_port : frontend_port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gateway_ip_configuration : gateway_ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  global : global list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_listener : http_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_link_configuration : private_link_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  probe : probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redirect_configuration : redirect_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_routing_rule : request_routing_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rewrite_rule_set : rewrite_rule_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sku : sku list; [@default []] [@yojson_drop_default Stdlib.( = )]
  ssl_certificate : ssl_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssl_policy : ssl_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssl_profile : ssl_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  trusted_client_certificate : trusted_client_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trusted_root_certificate : trusted_root_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_path_map : url_path_map list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  waf_configuration : waf_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_gateway) -> ()

let yojson_of_azurerm_application_gateway =
  (function
   | {
       enable_http2 = v_enable_http2;
       fips_enabled = v_fips_enabled;
       firewall_policy_id = v_firewall_policy_id;
       force_firewall_policy_association =
         v_force_firewall_policy_association;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       zones = v_zones;
       authentication_certificate = v_authentication_certificate;
       autoscale_configuration = v_autoscale_configuration;
       backend_address_pool = v_backend_address_pool;
       backend_http_settings = v_backend_http_settings;
       custom_error_configuration = v_custom_error_configuration;
       frontend_ip_configuration = v_frontend_ip_configuration;
       frontend_port = v_frontend_port;
       gateway_ip_configuration = v_gateway_ip_configuration;
       global = v_global;
       http_listener = v_http_listener;
       identity = v_identity;
       private_link_configuration = v_private_link_configuration;
       probe = v_probe;
       redirect_configuration = v_redirect_configuration;
       request_routing_rule = v_request_routing_rule;
       rewrite_rule_set = v_rewrite_rule_set;
       sku = v_sku;
       ssl_certificate = v_ssl_certificate;
       ssl_policy = v_ssl_policy;
       ssl_profile = v_ssl_profile;
       timeouts = v_timeouts;
       trusted_client_certificate = v_trusted_client_certificate;
       trusted_root_certificate = v_trusted_root_certificate;
       url_path_map = v_url_path_map;
       waf_configuration = v_waf_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_waf_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_waf_configuration)
               v_waf_configuration
           in
           let bnd = "waf_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_path_map then bnds
         else
           let arg =
             (yojson_of_list yojson_of_url_path_map) v_url_path_map
           in
           let bnd = "url_path_map", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trusted_root_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trusted_root_certificate)
               v_trusted_root_certificate
           in
           let bnd = "trusted_root_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trusted_client_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trusted_client_certificate)
               v_trusted_client_certificate
           in
           let bnd = "trusted_client_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssl_profile) v_ssl_profile
           in
           let bnd = "ssl_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssl_policy) v_ssl_policy
           in
           let bnd = "ssl_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssl_certificate)
               v_ssl_certificate
           in
           let bnd = "ssl_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rewrite_rule_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rewrite_rule_set)
               v_rewrite_rule_set
           in
           let bnd = "rewrite_rule_set", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_routing_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_request_routing_rule)
               v_request_routing_rule
           in
           let bnd = "request_routing_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_redirect_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_redirect_configuration)
               v_redirect_configuration
           in
           let bnd = "redirect_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_probe then bnds
         else
           let arg = (yojson_of_list yojson_of_probe) v_probe in
           let bnd = "probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_link_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_link_configuration)
               v_private_link_configuration
           in
           let bnd = "private_link_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_listener then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_listener) v_http_listener
           in
           let bnd = "http_listener", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_global then bnds
         else
           let arg = (yojson_of_list yojson_of_global) v_global in
           let bnd = "global", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gateway_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gateway_ip_configuration)
               v_gateway_ip_configuration
           in
           let bnd = "gateway_ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frontend_port then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_port) v_frontend_port
           in
           let bnd = "frontend_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frontend_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_ip_configuration)
               v_frontend_ip_configuration
           in
           let bnd = "frontend_ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_error_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_error_configuration)
               v_custom_error_configuration
           in
           let bnd = "custom_error_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend_http_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_http_settings)
               v_backend_http_settings
           in
           let bnd = "backend_http_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend_address_pool then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_address_pool)
               v_backend_address_pool
           in
           let bnd = "backend_address_pool", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscale_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscale_configuration)
               v_autoscale_configuration
           in
           let bnd = "autoscale_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authentication_certificate)
               v_authentication_certificate
           in
           let bnd = "authentication_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_firewall_policy_association with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_firewall_policy_association", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firewall_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_http2", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_application_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_gateway

[@@@deriving.end]

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
    ?trusted_root_certificate_names
    ?(authentication_certificate = []) ?(connection_draining = [])
    ~cookie_based_affinity ~name ~port ~protocol () :
    backend_http_settings =
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
    ?(custom_error_configuration = [])
    ~frontend_ip_configuration_name ~frontend_port_name ~name
    ~protocol () : http_listener =
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
    ?pick_host_name_from_backend_http_settings ?port ?(match_ = [])
    ~interval ~name ~path ~protocol ~timeout ~unhealthy_threshold ()
    : probe =
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

let rewrite_rule_set__rewrite_rule ?(condition = [])
    ?(request_header_configuration = [])
    ?(response_header_configuration = []) ?(url = []) ~name
    ~rule_sequence () : rewrite_rule_set__rewrite_rule =
  {
    name;
    rule_sequence;
    condition;
    request_header_configuration;
    response_header_configuration;
    url;
  }

let rewrite_rule_set ?(rewrite_rule = []) ~name () : rewrite_rule_set
    =
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
    ?verify_client_certificate_revocation ?(ssl_policy = []) ~name ()
    : ssl_profile =
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
    ?request_body_check ?rule_set_type ?(disabled_rule_group = [])
    ?(exclusion = []) ~enabled ~firewall_mode ~rule_set_version () :
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
    ?zones ?(authentication_certificate = [])
    ?(autoscale_configuration = [])
    ?(custom_error_configuration = []) ?(global = [])
    ?(identity = []) ?(rewrite_rule_set = []) ?(ssl_policy = [])
    ?(ssl_profile = []) ?timeouts ?(trusted_client_certificate = [])
    ?(trusted_root_certificate = []) ?(url_path_map = [])
    ?(waf_configuration = []) ~location ~name ~resource_group_name
    ~backend_address_pool ~backend_http_settings
    ~frontend_ip_configuration ~frontend_port
    ~gateway_ip_configuration ~http_listener
    ~private_link_configuration ~probe ~redirect_configuration
    ~request_routing_rule ~sku ~ssl_certificate () :
    azurerm_application_gateway =
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
  tf_name : string;
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

let make ?enable_http2 ?fips_enabled ?firewall_policy_id
    ?force_firewall_policy_association ?id ?tags ?zones
    ?(authentication_certificate = [])
    ?(autoscale_configuration = [])
    ?(custom_error_configuration = []) ?(global = [])
    ?(identity = []) ?(rewrite_rule_set = []) ?(ssl_policy = [])
    ?(ssl_profile = []) ?timeouts ?(trusted_client_certificate = [])
    ?(trusted_root_certificate = []) ?(url_path_map = [])
    ?(waf_configuration = []) ~location ~name ~resource_group_name
    ~backend_address_pool ~backend_http_settings
    ~frontend_ip_configuration ~frontend_port
    ~gateway_ip_configuration ~http_listener
    ~private_link_configuration ~probe ~redirect_configuration
    ~request_routing_rule ~sku ~ssl_certificate __id =
  let __type = "azurerm_application_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       enable_http2 = Prop.computed __type __id "enable_http2";
       fips_enabled = Prop.computed __type __id "fips_enabled";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       force_firewall_policy_association =
         Prop.computed __type __id
           "force_firewall_policy_association";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_endpoint_connection =
         Prop.computed __type __id "private_endpoint_connection";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_gateway
        (azurerm_application_gateway ?enable_http2 ?fips_enabled
           ?firewall_policy_id ?force_firewall_policy_association ?id
           ?tags ?zones ~authentication_certificate
           ~autoscale_configuration ~custom_error_configuration
           ~global ~identity ~rewrite_rule_set ~ssl_policy
           ~ssl_profile ?timeouts ~trusted_client_certificate
           ~trusted_root_certificate ~url_path_map ~waf_configuration
           ~location ~name ~resource_group_name ~backend_address_pool
           ~backend_http_settings ~frontend_ip_configuration
           ~frontend_port ~gateway_ip_configuration ~http_listener
           ~private_link_configuration ~probe ~redirect_configuration
           ~request_routing_rule ~sku ~ssl_certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_http2 ?fips_enabled
    ?firewall_policy_id ?force_firewall_policy_association ?id ?tags
    ?zones ?(authentication_certificate = [])
    ?(autoscale_configuration = [])
    ?(custom_error_configuration = []) ?(global = [])
    ?(identity = []) ?(rewrite_rule_set = []) ?(ssl_policy = [])
    ?(ssl_profile = []) ?timeouts ?(trusted_client_certificate = [])
    ?(trusted_root_certificate = []) ?(url_path_map = [])
    ?(waf_configuration = []) ~location ~name ~resource_group_name
    ~backend_address_pool ~backend_http_settings
    ~frontend_ip_configuration ~frontend_port
    ~gateway_ip_configuration ~http_listener
    ~private_link_configuration ~probe ~redirect_configuration
    ~request_routing_rule ~sku ~ssl_certificate __id =
  let (r : _ Tf_core.resource) =
    make ?enable_http2 ?fips_enabled ?firewall_policy_id
      ?force_firewall_policy_association ?id ?tags ?zones
      ~authentication_certificate ~autoscale_configuration
      ~custom_error_configuration ~global ~identity ~rewrite_rule_set
      ~ssl_policy ~ssl_profile ?timeouts ~trusted_client_certificate
      ~trusted_root_certificate ~url_path_map ~waf_configuration
      ~location ~name ~resource_group_name ~backend_address_pool
      ~backend_http_settings ~frontend_ip_configuration
      ~frontend_port ~gateway_ip_configuration ~http_listener
      ~private_link_configuration ~probe ~redirect_configuration
      ~request_routing_rule ~sku ~ssl_certificate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

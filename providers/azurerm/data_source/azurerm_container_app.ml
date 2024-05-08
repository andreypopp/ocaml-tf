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

type dapr = {
  app_id : string prop;
  app_port : float prop;
  app_protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dapr) -> ()

let yojson_of_dapr =
  (function
   | {
       app_id = v_app_id;
       app_port = v_app_port;
       app_protocol = v_app_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_protocol in
         ("app_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_app_port in
         ("app_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : dapr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dapr

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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

type ingress__traffic_weight = {
  label : string prop;
  latest_revision : bool prop;
  percentage : float prop;
  revision_suffix : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress__traffic_weight) -> ()

let yojson_of_ingress__traffic_weight =
  (function
   | {
       label = v_label;
       latest_revision = v_latest_revision;
       percentage = v_percentage;
       revision_suffix = v_revision_suffix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revision_suffix
         in
         ("revision_suffix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percentage in
         ("percentage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_latest_revision in
         ("latest_revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       `Assoc bnds
    : ingress__traffic_weight -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress__traffic_weight

[@@@deriving.end]

type ingress__ip_security_restriction = {
  action : string prop;
  description : string prop;
  ip_address_range : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress__ip_security_restriction) -> ()

let yojson_of_ingress__ip_security_restriction =
  (function
   | {
       action = v_action;
       description = v_description;
       ip_address_range = v_ip_address_range;
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
           yojson_of_prop yojson_of_string v_ip_address_range
         in
         ("ip_address_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : ingress__ip_security_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress__ip_security_restriction

[@@@deriving.end]

type ingress__custom_domain = {
  certificate_binding_type : string prop;
  certificate_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress__custom_domain) -> ()

let yojson_of_ingress__custom_domain =
  (function
   | {
       certificate_binding_type = v_certificate_binding_type;
       certificate_id = v_certificate_id;
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
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_binding_type
         in
         ("certificate_binding_type", arg) :: bnds
       in
       `Assoc bnds
    : ingress__custom_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress__custom_domain

[@@@deriving.end]

type ingress = {
  allow_insecure_connections : bool prop;
  custom_domain : ingress__custom_domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exposed_port : float prop;
  external_enabled : bool prop;
  fqdn : string prop;
  ip_security_restriction : ingress__ip_security_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_port : float prop;
  traffic_weight : ingress__traffic_weight list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transport : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress) -> ()

let yojson_of_ingress =
  (function
   | {
       allow_insecure_connections = v_allow_insecure_connections;
       custom_domain = v_custom_domain;
       exposed_port = v_exposed_port;
       external_enabled = v_external_enabled;
       fqdn = v_fqdn;
       ip_security_restriction = v_ip_security_restriction;
       target_port = v_target_port;
       traffic_weight = v_traffic_weight;
       transport = v_transport;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_traffic_weight then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress__traffic_weight)
               v_traffic_weight
           in
           let bnd = "traffic_weight", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_port in
         ("target_port", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_security_restriction then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ingress__ip_security_restriction)
               v_ip_security_restriction
           in
           let bnd = "ip_security_restriction", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_external_enabled
         in
         ("external_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_exposed_port in
         ("exposed_port", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress__custom_domain)
               v_custom_domain
           in
           let bnd = "custom_domain", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_insecure_connections
         in
         ("allow_insecure_connections", arg) :: bnds
       in
       `Assoc bnds
    : ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress

[@@@deriving.end]

type registry = {
  identity : string prop;
  password_secret_name : string prop;
  server : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registry) -> ()

let yojson_of_registry =
  (function
   | {
       identity = v_identity;
       password_secret_name = v_password_secret_name;
       server = v_server;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_secret_name
         in
         ("password_secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity in
         ("identity", arg) :: bnds
       in
       `Assoc bnds
    : registry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registry

[@@@deriving.end]

type secret = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type template__volume = {
  name : string prop;
  storage_name : string prop;
  storage_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volume) -> ()

let yojson_of_template__volume =
  (function
   | {
       name = v_name;
       storage_name = v_storage_name;
       storage_type = v_storage_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_name in
         ("storage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volume

[@@@deriving.end]

type template__tcp_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__tcp_scale_rule__authentication) -> ()

let yojson_of_template__tcp_scale_rule__authentication =
  (function
   | {
       secret_name = v_secret_name;
       trigger_parameter = v_trigger_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_parameter
         in
         ("trigger_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : template__tcp_scale_rule__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__tcp_scale_rule__authentication

[@@@deriving.end]

type template__tcp_scale_rule = {
  authentication : template__tcp_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  concurrent_requests : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__tcp_scale_rule) -> ()

let yojson_of_template__tcp_scale_rule =
  (function
   | {
       authentication = v_authentication;
       concurrent_requests = v_concurrent_requests;
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
           yojson_of_prop yojson_of_string v_concurrent_requests
         in
         ("concurrent_requests", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__tcp_scale_rule__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__tcp_scale_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__tcp_scale_rule

[@@@deriving.end]

type template__init_container__volume_mounts = {
  name : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__init_container__volume_mounts) -> ()

let yojson_of_template__init_container__volume_mounts =
  (function
   | { name = v_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__init_container__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__init_container__volume_mounts

[@@@deriving.end]

type template__init_container__env = {
  name : string prop;
  secret_name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__init_container__env) -> ()

let yojson_of_template__init_container__env =
  (function
   | { name = v_name; secret_name = v_secret_name; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__init_container__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__init_container__env

[@@@deriving.end]

type template__init_container = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cpu : float prop;
  env : template__init_container__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage : string prop;
  image : string prop;
  memory : string prop;
  name : string prop;
  volume_mounts : template__init_container__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__init_container) -> ()

let yojson_of_template__init_container =
  (function
   | {
       args = v_args;
       command = v_command;
       cpu = v_cpu;
       env = v_env;
       ephemeral_storage = v_ephemeral_storage;
       image = v_image;
       memory = v_memory;
       name = v_name;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume_mounts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__init_container__volume_mounts)
               v_volume_mounts
           in
           let bnd = "volume_mounts", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ephemeral_storage
         in
         ("ephemeral_storage", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__init_container__env)
               v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__init_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__init_container

[@@@deriving.end]

type template__http_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__http_scale_rule__authentication) -> ()

let yojson_of_template__http_scale_rule__authentication =
  (function
   | {
       secret_name = v_secret_name;
       trigger_parameter = v_trigger_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_parameter
         in
         ("trigger_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : template__http_scale_rule__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__http_scale_rule__authentication

[@@@deriving.end]

type template__http_scale_rule = {
  authentication : template__http_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  concurrent_requests : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__http_scale_rule) -> ()

let yojson_of_template__http_scale_rule =
  (function
   | {
       authentication = v_authentication;
       concurrent_requests = v_concurrent_requests;
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
           yojson_of_prop yojson_of_string v_concurrent_requests
         in
         ("concurrent_requests", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__http_scale_rule__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__http_scale_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__http_scale_rule

[@@@deriving.end]

type template__custom_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__custom_scale_rule__authentication) -> ()

let yojson_of_template__custom_scale_rule__authentication =
  (function
   | {
       secret_name = v_secret_name;
       trigger_parameter = v_trigger_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_parameter
         in
         ("trigger_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : template__custom_scale_rule__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__custom_scale_rule__authentication

[@@@deriving.end]

type template__custom_scale_rule = {
  authentication : template__custom_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_rule_type : string prop;
  metadata : (string * string prop) list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__custom_scale_rule) -> ()

let yojson_of_template__custom_scale_rule =
  (function
   | {
       authentication = v_authentication;
       custom_rule_type = v_custom_rule_type;
       metadata = v_metadata;
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
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_rule_type
         in
         ("custom_rule_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__custom_scale_rule__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__custom_scale_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__custom_scale_rule

[@@@deriving.end]

type template__container__volume_mounts = {
  name : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__volume_mounts) -> ()

let yojson_of_template__container__volume_mounts =
  (function
   | { name = v_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__volume_mounts

[@@@deriving.end]

type template__container__startup_probe__header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__startup_probe__header) -> ()

let yojson_of_template__container__startup_probe__header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__startup_probe__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__startup_probe__header

[@@@deriving.end]

type template__container__startup_probe = {
  failure_count_threshold : float prop;
  header : template__container__startup_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host : string prop;
  interval_seconds : float prop;
  path : string prop;
  port : float prop;
  termination_grace_period_seconds : float prop;
  timeout : float prop;
  transport : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__startup_probe) -> ()

let yojson_of_template__container__startup_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       header = v_header;
       host = v_host;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       termination_grace_period_seconds =
         v_termination_grace_period_seconds;
       timeout = v_timeout;
       transport = v_transport;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_termination_grace_period_seconds
         in
         ("termination_grace_period_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_seconds
         in
         ("interval_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__startup_probe__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_count_threshold
         in
         ("failure_count_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__startup_probe

[@@@deriving.end]

type template__container__readiness_probe__header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__readiness_probe__header) -> ()

let yojson_of_template__container__readiness_probe__header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__readiness_probe__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__readiness_probe__header

[@@@deriving.end]

type template__container__readiness_probe = {
  failure_count_threshold : float prop;
  header : template__container__readiness_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host : string prop;
  interval_seconds : float prop;
  path : string prop;
  port : float prop;
  success_count_threshold : float prop;
  timeout : float prop;
  transport : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__readiness_probe) -> ()

let yojson_of_template__container__readiness_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       header = v_header;
       host = v_host;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       success_count_threshold = v_success_count_threshold;
       timeout = v_timeout;
       transport = v_transport;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_count_threshold
         in
         ("success_count_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_seconds
         in
         ("interval_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__readiness_probe__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_count_threshold
         in
         ("failure_count_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__readiness_probe

[@@@deriving.end]

type template__container__liveness_probe__header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__liveness_probe__header) -> ()

let yojson_of_template__container__liveness_probe__header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__liveness_probe__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__liveness_probe__header

[@@@deriving.end]

type template__container__liveness_probe = {
  failure_count_threshold : float prop;
  header : template__container__liveness_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host : string prop;
  initial_delay : float prop;
  interval_seconds : float prop;
  path : string prop;
  port : float prop;
  termination_grace_period_seconds : float prop;
  timeout : float prop;
  transport : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__liveness_probe) -> ()

let yojson_of_template__container__liveness_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       header = v_header;
       host = v_host;
       initial_delay = v_initial_delay;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       termination_grace_period_seconds =
         v_termination_grace_period_seconds;
       timeout = v_timeout;
       transport = v_transport;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_termination_grace_period_seconds
         in
         ("termination_grace_period_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_seconds
         in
         ("interval_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_initial_delay in
         ("initial_delay", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__liveness_probe__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_count_threshold
         in
         ("failure_count_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__liveness_probe

[@@@deriving.end]

type template__container__env = {
  name : string prop;
  secret_name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__env) -> ()

let yojson_of_template__container__env =
  (function
   | { name = v_name; secret_name = v_secret_name; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__env

[@@@deriving.end]

type template__container = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cpu : float prop;
  env : template__container__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage : string prop;
  image : string prop;
  liveness_probe : template__container__liveness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory : string prop;
  name : string prop;
  readiness_probe : template__container__readiness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  startup_probe : template__container__startup_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_mounts : template__container__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container) -> ()

let yojson_of_template__container =
  (function
   | {
       args = v_args;
       command = v_command;
       cpu = v_cpu;
       env = v_env;
       ephemeral_storage = v_ephemeral_storage;
       image = v_image;
       liveness_probe = v_liveness_probe;
       memory = v_memory;
       name = v_name;
       readiness_probe = v_readiness_probe;
       startup_probe = v_startup_probe;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume_mounts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__volume_mounts)
               v_volume_mounts
           in
           let bnd = "volume_mounts", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_startup_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__startup_probe)
               v_startup_probe
           in
           let bnd = "startup_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_readiness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__readiness_probe)
               v_readiness_probe
           in
           let bnd = "readiness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__container__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ephemeral_storage
         in
         ("ephemeral_storage", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__container__env)
               v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container

[@@@deriving.end]

type template__azure_queue_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__azure_queue_scale_rule__authentication) -> ()

let yojson_of_template__azure_queue_scale_rule__authentication =
  (function
   | {
       secret_name = v_secret_name;
       trigger_parameter = v_trigger_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_parameter
         in
         ("trigger_parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : template__azure_queue_scale_rule__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__azure_queue_scale_rule__authentication

[@@@deriving.end]

type template__azure_queue_scale_rule = {
  authentication :
    template__azure_queue_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  queue_length : float prop;
  queue_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__azure_queue_scale_rule) -> ()

let yojson_of_template__azure_queue_scale_rule =
  (function
   | {
       authentication = v_authentication;
       name = v_name;
       queue_length = v_queue_length;
       queue_name = v_queue_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_name in
         ("queue_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_queue_length in
         ("queue_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__azure_queue_scale_rule__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__azure_queue_scale_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__azure_queue_scale_rule

[@@@deriving.end]

type template = {
  azure_queue_scale_rule : template__azure_queue_scale_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  container : template__container list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_scale_rule : template__custom_scale_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_scale_rule : template__http_scale_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  init_container : template__init_container list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_replicas : float prop;
  min_replicas : float prop;
  revision_suffix : string prop;
  tcp_scale_rule : template__tcp_scale_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume : template__volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       azure_queue_scale_rule = v_azure_queue_scale_rule;
       container = v_container;
       custom_scale_rule = v_custom_scale_rule;
       http_scale_rule = v_http_scale_rule;
       init_container = v_init_container;
       max_replicas = v_max_replicas;
       min_replicas = v_min_replicas;
       revision_suffix = v_revision_suffix;
       tcp_scale_rule = v_tcp_scale_rule;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__volume) v_volume
           in
           let bnd = "volume", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_tcp_scale_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__tcp_scale_rule)
               v_tcp_scale_rule
           in
           let bnd = "tcp_scale_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revision_suffix
         in
         ("revision_suffix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_replicas in
         ("min_replicas", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_replicas in
         ("max_replicas", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_init_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__init_container)
               v_init_container
           in
           let bnd = "init_container", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_scale_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__http_scale_rule)
               v_http_scale_rule
           in
           let bnd = "http_scale_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_scale_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__custom_scale_rule)
               v_custom_scale_rule
           in
           let bnd = "custom_scale_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__container)
               v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_queue_scale_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__azure_queue_scale_rule)
               v_azure_queue_scale_rule
           in
           let bnd = "azure_queue_scale_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type azurerm_container_app = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app) -> ()

let yojson_of_azurerm_container_app =
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
    : azurerm_container_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_container_app ?id ?timeouts ~name ~resource_group_name ()
    : azurerm_container_app =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  container_app_environment_id : string prop;
  custom_domain_verification_id : string prop;
  dapr : dapr list prop;
  id : string prop;
  identity : identity list prop;
  ingress : ingress list prop;
  latest_revision_fqdn : string prop;
  latest_revision_name : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  registry : registry list prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  secret : secret list prop;
  tags : (string * string) list prop;
  template : template list prop;
  workload_profile_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_container_app" in
  let __attrs =
    ({
       tf_name = __id;
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       dapr = Prop.computed __type __id "dapr";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       ingress = Prop.computed __type __id "ingress";
       latest_revision_fqdn =
         Prop.computed __type __id "latest_revision_fqdn";
       latest_revision_name =
         Prop.computed __type __id "latest_revision_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       registry = Prop.computed __type __id "registry";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       revision_mode = Prop.computed __type __id "revision_mode";
       secret = Prop.computed __type __id "secret";
       tags = Prop.computed __type __id "tags";
       template = Prop.computed __type __id "template";
       workload_profile_name =
         Prop.computed __type __id "workload_profile_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app
        (azurerm_container_app ?id ?timeouts ~name
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

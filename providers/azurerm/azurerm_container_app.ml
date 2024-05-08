(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dapr = {
  app_id : string prop;
  app_port : float prop option; [@option]
  app_protocol : string prop option; [@option]
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
         match v_app_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_port", arg in
             bnd :: bnds
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
  identity_ids : string prop list option; [@option]
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
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type ingress__custom_domain = {
  certificate_binding_type : string prop option; [@option]
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
         match v_certificate_binding_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_binding_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress__custom_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress__custom_domain

[@@@deriving.end]

type ingress__ip_security_restriction = {
  action : string prop;
  description : string prop option; [@option]
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
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

type ingress__traffic_weight = {
  label : string prop option; [@option]
  latest_revision : bool prop option; [@option]
  percentage : float prop;
  revision_suffix : string prop option; [@option]
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
         match v_revision_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percentage in
         ("percentage", arg) :: bnds
       in
       let bnds =
         match v_latest_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "latest_revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress__traffic_weight -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress__traffic_weight

[@@@deriving.end]

type ingress = {
  allow_insecure_connections : bool prop option; [@option]
  exposed_port : float prop option; [@option]
  external_enabled : bool prop option; [@option]
  target_port : float prop;
  transport : string prop option; [@option]
  custom_domain : ingress__custom_domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_security_restriction : ingress__ip_security_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  traffic_weight : ingress__traffic_weight list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress) -> ()

let yojson_of_ingress =
  (function
   | {
       allow_insecure_connections = v_allow_insecure_connections;
       exposed_port = v_exposed_port;
       external_enabled = v_external_enabled;
       target_port = v_target_port;
       transport = v_transport;
       custom_domain = v_custom_domain;
       ip_security_restriction = v_ip_security_restriction;
       traffic_weight = v_traffic_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_transport with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transport", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_port in
         ("target_port", arg) :: bnds
       in
       let bnds =
         match v_external_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "external_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exposed_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "exposed_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure_connections", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress

[@@@deriving.end]

type registry = {
  identity : string prop option; [@option]
  password_secret_name : string prop option; [@option]
  server : string prop;
  username : string prop option; [@option]
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
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         match v_password_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_secret_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
             bnd :: bnds
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
  name : string prop;
  queue_length : float prop;
  queue_name : string prop;
  authentication :
    template__azure_queue_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__azure_queue_scale_rule) -> ()

let yojson_of_template__azure_queue_scale_rule =
  (function
   | {
       name = v_name;
       queue_length = v_queue_length;
       queue_name = v_queue_name;
       authentication = v_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : template__azure_queue_scale_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__azure_queue_scale_rule

[@@@deriving.end]

type template__container__env = {
  name : string prop;
  secret_name : string prop option; [@option]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__container__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__env

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
  failure_count_threshold : float prop option; [@option]
  host : string prop option; [@option]
  initial_delay : float prop option; [@option]
  interval_seconds : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop;
  timeout : float prop option; [@option]
  transport : string prop;
  header : template__container__liveness_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__liveness_probe) -> ()

let yojson_of_template__container__liveness_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       host = v_host;
       initial_delay = v_initial_delay;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       timeout = v_timeout;
       transport = v_transport;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
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
         match v_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_count_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_count_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__liveness_probe

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
  failure_count_threshold : float prop option; [@option]
  host : string prop option; [@option]
  interval_seconds : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop;
  success_count_threshold : float prop option; [@option]
  timeout : float prop option; [@option]
  transport : string prop;
  header : template__container__readiness_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__readiness_probe) -> ()

let yojson_of_template__container__readiness_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       host = v_host;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       success_count_threshold = v_success_count_threshold;
       timeout = v_timeout;
       transport = v_transport;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_count_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_count_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
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
         match v_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_count_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_count_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__readiness_probe

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
  failure_count_threshold : float prop option; [@option]
  host : string prop option; [@option]
  interval_seconds : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop;
  timeout : float prop option; [@option]
  transport : string prop;
  header : template__container__startup_probe__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__container__startup_probe) -> ()

let yojson_of_template__container__startup_probe =
  (function
   | {
       failure_count_threshold = v_failure_count_threshold;
       host = v_host;
       interval_seconds = v_interval_seconds;
       path = v_path;
       port = v_port;
       timeout = v_timeout;
       transport = v_transport;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
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
         match v_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_count_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_count_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container__startup_probe

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

type template__container = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  cpu : float prop;
  image : string prop;
  memory : string prop;
  name : string prop;
  env : template__container__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  liveness_probe : template__container__liveness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       image = v_image;
       memory = v_memory;
       name = v_name;
       env = v_env;
       liveness_probe = v_liveness_probe;
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
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__container

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
  custom_rule_type : string prop;
  metadata : (string * string prop) list;
  name : string prop;
  authentication : template__custom_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__custom_scale_rule) -> ()

let yojson_of_template__custom_scale_rule =
  (function
   | {
       custom_rule_type = v_custom_rule_type;
       metadata = v_metadata;
       name = v_name;
       authentication = v_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : template__custom_scale_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__custom_scale_rule

[@@@deriving.end]

type template__http_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop option; [@option]
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
         match v_trigger_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_parameter", arg in
             bnd :: bnds
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
  concurrent_requests : string prop;
  name : string prop;
  authentication : template__http_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__http_scale_rule) -> ()

let yojson_of_template__http_scale_rule =
  (function
   | {
       concurrent_requests = v_concurrent_requests;
       name = v_name;
       authentication = v_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : template__http_scale_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__http_scale_rule

[@@@deriving.end]

type template__init_container__env = {
  name : string prop;
  secret_name : string prop option; [@option]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_name", arg in
             bnd :: bnds
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

type template__init_container = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  cpu : float prop option; [@option]
  image : string prop;
  memory : string prop option; [@option]
  name : string prop;
  env : template__init_container__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       image = v_image;
       memory = v_memory;
       name = v_name;
       env = v_env;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__init_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__init_container

[@@@deriving.end]

type template__tcp_scale_rule__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop option; [@option]
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
         match v_trigger_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_parameter", arg in
             bnd :: bnds
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
  concurrent_requests : string prop;
  name : string prop;
  authentication : template__tcp_scale_rule__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__tcp_scale_rule) -> ()

let yojson_of_template__tcp_scale_rule =
  (function
   | {
       concurrent_requests = v_concurrent_requests;
       name = v_name;
       authentication = v_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : template__tcp_scale_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__tcp_scale_rule

[@@@deriving.end]

type template__volume = {
  name : string prop;
  storage_name : string prop option; [@option]
  storage_type : string prop option; [@option]
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
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volume

[@@@deriving.end]

type template = {
  max_replicas : float prop option; [@option]
  min_replicas : float prop option; [@option]
  revision_suffix : string prop option; [@option]
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
       max_replicas = v_max_replicas;
       min_replicas = v_min_replicas;
       revision_suffix = v_revision_suffix;
       azure_queue_scale_rule = v_azure_queue_scale_rule;
       container = v_container;
       custom_scale_rule = v_custom_scale_rule;
       http_scale_rule = v_http_scale_rule;
       init_container = v_init_container;
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
       let bnds =
         match v_revision_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_replicas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_replicas", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

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

type azurerm_container_app = {
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  tags : (string * string prop) list option; [@option]
  workload_profile_name : string prop option; [@option]
  dapr : dapr list; [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ingress : ingress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry : registry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template : template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app) -> ()

let yojson_of_azurerm_container_app =
  (function
   | {
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       revision_mode = v_revision_mode;
       tags = v_tags;
       workload_profile_name = v_workload_profile_name;
       dapr = v_dapr;
       identity = v_identity;
       ingress = v_ingress;
       registry = v_registry;
       secret = v_secret;
       template = v_template;
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
         if Stdlib.( = ) [] v_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template) v_template
           in
           let bnd = "template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_registry then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registry) v_registry
           in
           let bnd = "registry", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress then bnds
         else
           let arg = (yojson_of_list yojson_of_ingress) v_ingress in
           let bnd = "ingress", arg in
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
         if Stdlib.( = ) [] v_dapr then bnds
         else
           let arg = (yojson_of_list yojson_of_dapr) v_dapr in
           let bnd = "dapr", arg in
           bnd :: bnds
       in
       let bnds =
         match v_workload_profile_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workload_profile_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_revision_mode in
         ("revision_mode", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app

[@@@deriving.end]

let dapr ?app_port ?app_protocol ~app_id () : dapr =
  { app_id; app_port; app_protocol }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress__custom_domain ?certificate_binding_type ~certificate_id
    ~name () : ingress__custom_domain =
  { certificate_binding_type; certificate_id; name }

let ingress__ip_security_restriction ?description ~action
    ~ip_address_range ~name () : ingress__ip_security_restriction =
  { action; description; ip_address_range; name }

let ingress__traffic_weight ?label ?latest_revision ?revision_suffix
    ~percentage () : ingress__traffic_weight =
  { label; latest_revision; percentage; revision_suffix }

let ingress ?allow_insecure_connections ?exposed_port
    ?external_enabled ?transport ?(custom_domain = [])
    ?(ip_security_restriction = []) ~target_port ~traffic_weight () :
    ingress =
  {
    allow_insecure_connections;
    exposed_port;
    external_enabled;
    target_port;
    transport;
    custom_domain;
    ip_security_restriction;
    traffic_weight;
  }

let registry ?identity ?password_secret_name ?username ~server () :
    registry =
  { identity; password_secret_name; server; username }

let secret ~name ~value () : secret = { name; value }

let template__azure_queue_scale_rule__authentication ~secret_name
    ~trigger_parameter () :
    template__azure_queue_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__azure_queue_scale_rule ~name ~queue_length ~queue_name
    ~authentication () : template__azure_queue_scale_rule =
  { name; queue_length; queue_name; authentication }

let template__container__env ?secret_name ?value ~name () :
    template__container__env =
  { name; secret_name; value }

let template__container__liveness_probe__header ~name ~value () :
    template__container__liveness_probe__header =
  { name; value }

let template__container__liveness_probe ?failure_count_threshold
    ?host ?initial_delay ?interval_seconds ?path ?timeout
    ?(header = []) ~port ~transport () :
    template__container__liveness_probe =
  {
    failure_count_threshold;
    host;
    initial_delay;
    interval_seconds;
    path;
    port;
    timeout;
    transport;
    header;
  }

let template__container__readiness_probe__header ~name ~value () :
    template__container__readiness_probe__header =
  { name; value }

let template__container__readiness_probe ?failure_count_threshold
    ?host ?interval_seconds ?path ?success_count_threshold ?timeout
    ?(header = []) ~port ~transport () :
    template__container__readiness_probe =
  {
    failure_count_threshold;
    host;
    interval_seconds;
    path;
    port;
    success_count_threshold;
    timeout;
    transport;
    header;
  }

let template__container__startup_probe__header ~name ~value () :
    template__container__startup_probe__header =
  { name; value }

let template__container__startup_probe ?failure_count_threshold ?host
    ?interval_seconds ?path ?timeout ?(header = []) ~port ~transport
    () : template__container__startup_probe =
  {
    failure_count_threshold;
    host;
    interval_seconds;
    path;
    port;
    timeout;
    transport;
    header;
  }

let template__container__volume_mounts ~name ~path () :
    template__container__volume_mounts =
  { name; path }

let template__container ?args ?command ?(env = [])
    ?(liveness_probe = []) ?(readiness_probe = [])
    ?(startup_probe = []) ?(volume_mounts = []) ~cpu ~image ~memory
    ~name () : template__container =
  {
    args;
    command;
    cpu;
    image;
    memory;
    name;
    env;
    liveness_probe;
    readiness_probe;
    startup_probe;
    volume_mounts;
  }

let template__custom_scale_rule__authentication ~secret_name
    ~trigger_parameter () :
    template__custom_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__custom_scale_rule ?(authentication = [])
    ~custom_rule_type ~metadata ~name () :
    template__custom_scale_rule =
  { custom_rule_type; metadata; name; authentication }

let template__http_scale_rule__authentication ?trigger_parameter
    ~secret_name () : template__http_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__http_scale_rule ?(authentication = [])
    ~concurrent_requests ~name () : template__http_scale_rule =
  { concurrent_requests; name; authentication }

let template__init_container__env ?secret_name ?value ~name () :
    template__init_container__env =
  { name; secret_name; value }

let template__init_container__volume_mounts ~name ~path () :
    template__init_container__volume_mounts =
  { name; path }

let template__init_container ?args ?command ?cpu ?memory ?(env = [])
    ?(volume_mounts = []) ~image ~name () : template__init_container
    =
  { args; command; cpu; image; memory; name; env; volume_mounts }

let template__tcp_scale_rule__authentication ?trigger_parameter
    ~secret_name () : template__tcp_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__tcp_scale_rule ?(authentication = [])
    ~concurrent_requests ~name () : template__tcp_scale_rule =
  { concurrent_requests; name; authentication }

let template__volume ?storage_name ?storage_type ~name () :
    template__volume =
  { name; storage_name; storage_type }

let template ?max_replicas ?min_replicas ?revision_suffix
    ?(azure_queue_scale_rule = []) ?(custom_scale_rule = [])
    ?(http_scale_rule = []) ?(init_container = [])
    ?(tcp_scale_rule = []) ?(volume = []) ~container () : template =
  {
    max_replicas;
    min_replicas;
    revision_suffix;
    azure_queue_scale_rule;
    container;
    custom_scale_rule;
    http_scale_rule;
    init_container;
    tcp_scale_rule;
    volume;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app ?id ?tags ?workload_profile_name
    ?(dapr = []) ?(identity = []) ?(ingress = []) ?(registry = [])
    ?timeouts ~container_app_environment_id ~name
    ~resource_group_name ~revision_mode ~secret ~template () :
    azurerm_container_app =
  {
    container_app_environment_id;
    id;
    name;
    resource_group_name;
    revision_mode;
    tags;
    workload_profile_name;
    dapr;
    identity;
    ingress;
    registry;
    secret;
    template;
    timeouts;
  }

type t = {
  tf_name : string;
  container_app_environment_id : string prop;
  custom_domain_verification_id : string prop;
  id : string prop;
  latest_revision_fqdn : string prop;
  latest_revision_name : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  tags : (string * string) list prop;
  workload_profile_name : string prop;
}

let make ?id ?tags ?workload_profile_name ?(dapr = [])
    ?(identity = []) ?(ingress = []) ?(registry = []) ?timeouts
    ~container_app_environment_id ~name ~resource_group_name
    ~revision_mode ~secret ~template __id =
  let __type = "azurerm_container_app" in
  let __attrs =
    ({
       tf_name = __id;
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       id = Prop.computed __type __id "id";
       latest_revision_fqdn =
         Prop.computed __type __id "latest_revision_fqdn";
       latest_revision_name =
         Prop.computed __type __id "latest_revision_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       revision_mode = Prop.computed __type __id "revision_mode";
       tags = Prop.computed __type __id "tags";
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
        (azurerm_container_app ?id ?tags ?workload_profile_name ~dapr
           ~identity ~ingress ~registry ?timeouts
           ~container_app_environment_id ~name ~resource_group_name
           ~revision_mode ~secret ~template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?workload_profile_name ?(dapr = [])
    ?(identity = []) ?(ingress = []) ?(registry = []) ?timeouts
    ~container_app_environment_id ~name ~resource_group_name
    ~revision_mode ~secret ~template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?workload_profile_name ~dapr ~identity ~ingress
      ~registry ?timeouts ~container_app_environment_id ~name
      ~resource_group_name ~revision_mode ~secret ~template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

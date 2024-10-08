(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alarms = {
  alarm_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enable : bool prop;
  rollback : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alarms) -> ()

let yojson_of_alarms =
  (function
   | {
       alarm_names = v_alarm_names;
       enable = v_enable;
       rollback = v_rollback;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_rollback in
         ("rollback", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alarm_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_alarm_names
           in
           let bnd = "alarm_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : alarms -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alarms

[@@@deriving.end]

type capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_provider_strategy) -> ()

let yojson_of_capacity_provider_strategy =
  (function
   | {
       base = v_base;
       capacity_provider = v_capacity_provider;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_provider
         in
         ("capacity_provider", arg) :: bnds
       in
       let bnds =
         match v_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_provider_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_provider_strategy

[@@@deriving.end]

type deployment_circuit_breaker = {
  enable : bool prop;
  rollback : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_circuit_breaker) -> ()

let yojson_of_deployment_circuit_breaker =
  (function
   | { enable = v_enable; rollback = v_rollback } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_rollback in
         ("rollback", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : deployment_circuit_breaker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_circuit_breaker

[@@@deriving.end]

type deployment_controller = {
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_controller) -> ()

let yojson_of_deployment_controller =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_controller -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_controller

[@@@deriving.end]

type load_balancer = {
  container_name : string prop;
  container_port : float prop;
  elb_name : string prop option; [@option]
  target_group_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer) -> ()

let yojson_of_load_balancer =
  (function
   | {
       container_name = v_container_name;
       container_port = v_container_port;
       elb_name = v_elb_name;
       target_group_arn = v_target_group_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elb_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elb_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer

[@@@deriving.end]

type network_configuration = {
  assign_public_ip : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       assign_public_ip = v_assign_public_ip;
       security_groups = v_security_groups;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assign_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assign_public_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type ordered_placement_strategy = {
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ordered_placement_strategy) -> ()

let yojson_of_ordered_placement_strategy =
  (function
   | { field = v_field; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ordered_placement_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_placement_strategy

[@@@deriving.end]

type placement_constraints = {
  expression : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_constraints) -> ()

let yojson_of_placement_constraints =
  (function
   | { expression = v_expression; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_constraints

[@@@deriving.end]

type service_connect_configuration__log_configuration__secret_option = {
  name : string prop;
  value_from : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_connect_configuration__log_configuration__secret_option) ->
  ()

let yojson_of_service_connect_configuration__log_configuration__secret_option
    =
  (function
   | { name = v_name; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_from in
         ("value_from", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__log_configuration__secret_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_connect_configuration__log_configuration__secret_option

[@@@deriving.end]

type service_connect_configuration__log_configuration = {
  log_driver : string prop;
  options : string prop Tf_core.assoc option; [@option]
  secret_option :
    service_connect_configuration__log_configuration__secret_option
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_connect_configuration__log_configuration) -> ()

let yojson_of_service_connect_configuration__log_configuration =
  (function
   | {
       log_driver = v_log_driver;
       options = v_options;
       secret_option = v_secret_option;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_option then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__log_configuration__secret_option)
               v_secret_option
           in
           let bnd = "secret_option", arg in
           bnd :: bnds
       in
       let bnds =
         match v_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_driver in
         ("log_driver", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__log_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_configuration__log_configuration

[@@@deriving.end]

type service_connect_configuration__service__client_alias = {
  dns_name : string prop option; [@option]
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_connect_configuration__service__client_alias) -> ()

let yojson_of_service_connect_configuration__service__client_alias =
  (function
   | { dns_name = v_dns_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__service__client_alias ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_connect_configuration__service__client_alias

[@@@deriving.end]

type service_connect_configuration__service__timeout = {
  idle_timeout_seconds : float prop option; [@option]
  per_request_timeout_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_connect_configuration__service__timeout) -> ()

let yojson_of_service_connect_configuration__service__timeout =
  (function
   | {
       idle_timeout_seconds = v_idle_timeout_seconds;
       per_request_timeout_seconds = v_per_request_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_per_request_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "per_request_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__service__timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_configuration__service__timeout

[@@@deriving.end]

type service_connect_configuration__service__tls__issuer_cert_authority = {
  aws_pca_authority_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_connect_configuration__service__tls__issuer_cert_authority) ->
  ()

let yojson_of_service_connect_configuration__service__tls__issuer_cert_authority
    =
  (function
   | { aws_pca_authority_arn = v_aws_pca_authority_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aws_pca_authority_arn
         in
         ("aws_pca_authority_arn", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__service__tls__issuer_cert_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_connect_configuration__service__tls__issuer_cert_authority

[@@@deriving.end]

type service_connect_configuration__service__tls = {
  kms_key : string prop option; [@option]
  role_arn : string prop option; [@option]
  issuer_cert_authority :
    service_connect_configuration__service__tls__issuer_cert_authority
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_connect_configuration__service__tls) -> ()

let yojson_of_service_connect_configuration__service__tls =
  (function
   | {
       kms_key = v_kms_key;
       role_arn = v_role_arn;
       issuer_cert_authority = v_issuer_cert_authority;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_issuer_cert_authority then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__service__tls__issuer_cert_authority)
               v_issuer_cert_authority
           in
           let bnd = "issuer_cert_authority", arg in
           bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__service__tls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_configuration__service__tls

[@@@deriving.end]

type service_connect_configuration__service = {
  discovery_name : string prop option; [@option]
  ingress_port_override : float prop option; [@option]
  port_name : string prop;
  client_alias :
    service_connect_configuration__service__client_alias list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeout : service_connect_configuration__service__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tls : service_connect_configuration__service__tls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_connect_configuration__service) -> ()

let yojson_of_service_connect_configuration__service =
  (function
   | {
       discovery_name = v_discovery_name;
       ingress_port_override = v_ingress_port_override;
       port_name = v_port_name;
       client_alias = v_client_alias;
       timeout = v_timeout;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tls then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__service__tls)
               v_tls
           in
           let bnd = "tls", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_timeout then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__service__timeout)
               v_timeout
           in
           let bnd = "timeout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_alias then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__service__client_alias)
               v_client_alias
           in
           let bnd = "client_alias", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         match v_ingress_port_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ingress_port_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_discovery_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "discovery_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_connect_configuration__service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_configuration__service

[@@@deriving.end]

type service_connect_configuration = {
  enabled : bool prop;
  namespace : string prop option; [@option]
  log_configuration :
    service_connect_configuration__log_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service : service_connect_configuration__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_connect_configuration) -> ()

let yojson_of_service_connect_configuration =
  (function
   | {
       enabled = v_enabled;
       namespace = v_namespace;
       log_configuration = v_log_configuration;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__service)
               v_service
           in
           let bnd = "service", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_connect_configuration__log_configuration)
               v_log_configuration
           in
           let bnd = "log_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_configuration

[@@@deriving.end]

type service_registries = {
  container_name : string prop option; [@option]
  container_port : float prop option; [@option]
  port : float prop option; [@option]
  registry_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_registries) -> ()

let yojson_of_service_registries =
  (function
   | {
       container_name = v_container_name;
       container_port = v_container_port;
       port = v_port;
       registry_arn = v_registry_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_arn in
         ("registry_arn", arg) :: bnds
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
         match v_container_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_registries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_registries

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type volume_configuration__managed_ebs_volume = {
  encrypted : bool prop option; [@option]
  file_system_type : string prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  role_arn : string prop;
  size_in_gb : float prop option; [@option]
  snapshot_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume_configuration__managed_ebs_volume) -> ()

let yojson_of_volume_configuration__managed_ebs_volume =
  (function
   | {
       encrypted = v_encrypted;
       file_system_type = v_file_system_type;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       role_arn = v_role_arn;
       size_in_gb = v_size_in_gb;
       snapshot_id = v_snapshot_id;
       throughput = v_throughput;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_system_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : volume_configuration__managed_ebs_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume_configuration__managed_ebs_volume

[@@@deriving.end]

type volume_configuration = {
  name : string prop;
  managed_ebs_volume : volume_configuration__managed_ebs_volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume_configuration) -> ()

let yojson_of_volume_configuration =
  (function
   | { name = v_name; managed_ebs_volume = v_managed_ebs_volume } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_ebs_volume then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_volume_configuration__managed_ebs_volume)
               v_managed_ebs_volume
           in
           let bnd = "managed_ebs_volume", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : volume_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume_configuration

[@@@deriving.end]

type aws_ecs_service = {
  cluster : string prop option; [@option]
  deployment_maximum_percent : float prop option; [@option]
  deployment_minimum_healthy_percent : float prop option; [@option]
  desired_count : float prop option; [@option]
  enable_ecs_managed_tags : bool prop option; [@option]
  enable_execute_command : bool prop option; [@option]
  force_new_deployment : bool prop option; [@option]
  health_check_grace_period_seconds : float prop option; [@option]
  iam_role : string prop option; [@option]
  id : string prop option; [@option]
  launch_type : string prop option; [@option]
  name : string prop;
  platform_version : string prop option; [@option]
  propagate_tags : string prop option; [@option]
  scheduling_strategy : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  task_definition : string prop option; [@option]
  triggers : string prop Tf_core.assoc option; [@option]
  wait_for_steady_state : bool prop option; [@option]
  alarms : alarms list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  capacity_provider_strategy : capacity_provider_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deployment_circuit_breaker : deployment_circuit_breaker list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deployment_controller : deployment_controller list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer : load_balancer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_configuration : network_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ordered_placement_strategy : ordered_placement_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement_constraints : placement_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_connect_configuration : service_connect_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_registries : service_registries list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  volume_configuration : volume_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_service) -> ()

let yojson_of_aws_ecs_service =
  (function
   | {
       cluster = v_cluster;
       deployment_maximum_percent = v_deployment_maximum_percent;
       deployment_minimum_healthy_percent =
         v_deployment_minimum_healthy_percent;
       desired_count = v_desired_count;
       enable_ecs_managed_tags = v_enable_ecs_managed_tags;
       enable_execute_command = v_enable_execute_command;
       force_new_deployment = v_force_new_deployment;
       health_check_grace_period_seconds =
         v_health_check_grace_period_seconds;
       iam_role = v_iam_role;
       id = v_id;
       launch_type = v_launch_type;
       name = v_name;
       platform_version = v_platform_version;
       propagate_tags = v_propagate_tags;
       scheduling_strategy = v_scheduling_strategy;
       tags = v_tags;
       tags_all = v_tags_all;
       task_definition = v_task_definition;
       triggers = v_triggers;
       wait_for_steady_state = v_wait_for_steady_state;
       alarms = v_alarms;
       capacity_provider_strategy = v_capacity_provider_strategy;
       deployment_circuit_breaker = v_deployment_circuit_breaker;
       deployment_controller = v_deployment_controller;
       load_balancer = v_load_balancer;
       network_configuration = v_network_configuration;
       ordered_placement_strategy = v_ordered_placement_strategy;
       placement_constraints = v_placement_constraints;
       service_connect_configuration =
         v_service_connect_configuration;
       service_registries = v_service_registries;
       timeouts = v_timeouts;
       volume_configuration = v_volume_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_volume_configuration)
               v_volume_configuration
           in
           let bnd = "volume_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_registries then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_registries)
               v_service_registries
           in
           let bnd = "service_registries", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_connect_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_connect_configuration)
               v_service_connect_configuration
           in
           let bnd = "service_connect_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_placement_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement_constraints)
               v_placement_constraints
           in
           let bnd = "placement_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ordered_placement_strategy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ordered_placement_strategy)
               v_ordered_placement_strategy
           in
           let bnd = "ordered_placement_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer) v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment_controller then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_controller)
               v_deployment_controller
           in
           let bnd = "deployment_controller", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment_circuit_breaker then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_circuit_breaker)
               v_deployment_circuit_breaker
           in
           let bnd = "deployment_circuit_breaker", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_provider_strategy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_capacity_provider_strategy)
               v_capacity_provider_strategy
           in
           let bnd = "capacity_provider_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alarms then bnds
         else
           let arg = (yojson_of_list yojson_of_alarms) v_alarms in
           let bnd = "alarms", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_steady_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_steady_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_task_definition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_definition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduling_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduling_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_launch_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_type", arg in
             bnd :: bnds
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
         match v_iam_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_grace_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_grace_period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_new_deployment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_new_deployment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_execute_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_execute_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ecs_managed_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ecs_managed_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_minimum_healthy_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "deployment_minimum_healthy_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_maximum_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "deployment_maximum_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecs_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_service

[@@@deriving.end]

let alarms ~alarm_names ~enable ~rollback () : alarms =
  { alarm_names; enable; rollback }

let capacity_provider_strategy ?base ?weight ~capacity_provider () :
    capacity_provider_strategy =
  { base; capacity_provider; weight }

let deployment_circuit_breaker ~enable ~rollback () :
    deployment_circuit_breaker =
  { enable; rollback }

let deployment_controller ?type_ () : deployment_controller =
  { type_ }

let load_balancer ?elb_name ?target_group_arn ~container_name
    ~container_port () : load_balancer =
  { container_name; container_port; elb_name; target_group_arn }

let network_configuration ?assign_public_ip ?security_groups ~subnets
    () : network_configuration =
  { assign_public_ip; security_groups; subnets }

let ordered_placement_strategy ?field ~type_ () :
    ordered_placement_strategy =
  { field; type_ }

let placement_constraints ?expression ~type_ () :
    placement_constraints =
  { expression; type_ }

let service_connect_configuration__log_configuration__secret_option
    ~name ~value_from () :
    service_connect_configuration__log_configuration__secret_option =
  { name; value_from }

let service_connect_configuration__log_configuration ?options
    ?(secret_option = []) ~log_driver () :
    service_connect_configuration__log_configuration =
  { log_driver; options; secret_option }

let service_connect_configuration__service__client_alias ?dns_name
    ~port () : service_connect_configuration__service__client_alias =
  { dns_name; port }

let service_connect_configuration__service__timeout
    ?idle_timeout_seconds ?per_request_timeout_seconds () :
    service_connect_configuration__service__timeout =
  { idle_timeout_seconds; per_request_timeout_seconds }

let service_connect_configuration__service__tls__issuer_cert_authority
    ~aws_pca_authority_arn () :
    service_connect_configuration__service__tls__issuer_cert_authority
    =
  { aws_pca_authority_arn }

let service_connect_configuration__service__tls ?kms_key ?role_arn
    ~issuer_cert_authority () :
    service_connect_configuration__service__tls =
  { kms_key; role_arn; issuer_cert_authority }

let service_connect_configuration__service ?discovery_name
    ?ingress_port_override ?(client_alias = []) ?(timeout = [])
    ?(tls = []) ~port_name () :
    service_connect_configuration__service =
  {
    discovery_name;
    ingress_port_override;
    port_name;
    client_alias;
    timeout;
    tls;
  }

let service_connect_configuration ?namespace
    ?(log_configuration = []) ?(service = []) ~enabled () :
    service_connect_configuration =
  { enabled; namespace; log_configuration; service }

let service_registries ?container_name ?container_port ?port
    ~registry_arn () : service_registries =
  { container_name; container_port; port; registry_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let volume_configuration__managed_ebs_volume ?encrypted
    ?file_system_type ?iops ?kms_key_id ?size_in_gb ?snapshot_id
    ?throughput ?volume_type ~role_arn () :
    volume_configuration__managed_ebs_volume =
  {
    encrypted;
    file_system_type;
    iops;
    kms_key_id;
    role_arn;
    size_in_gb;
    snapshot_id;
    throughput;
    volume_type;
  }

let volume_configuration ~name ~managed_ebs_volume () :
    volume_configuration =
  { name; managed_ebs_volume }

let aws_ecs_service ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?(alarms = [])
    ?(deployment_circuit_breaker = []) ?(deployment_controller = [])
    ?(network_configuration = []) ?(ordered_placement_strategy = [])
    ?(service_connect_configuration = []) ?(service_registries = [])
    ?timeouts ?(volume_configuration = []) ~name
    ~capacity_provider_strategy ~load_balancer ~placement_constraints
    () : aws_ecs_service =
  {
    cluster;
    deployment_maximum_percent;
    deployment_minimum_healthy_percent;
    desired_count;
    enable_ecs_managed_tags;
    enable_execute_command;
    force_new_deployment;
    health_check_grace_period_seconds;
    iam_role;
    id;
    launch_type;
    name;
    platform_version;
    propagate_tags;
    scheduling_strategy;
    tags;
    tags_all;
    task_definition;
    triggers;
    wait_for_steady_state;
    alarms;
    capacity_provider_strategy;
    deployment_circuit_breaker;
    deployment_controller;
    load_balancer;
    network_configuration;
    ordered_placement_strategy;
    placement_constraints;
    service_connect_configuration;
    service_registries;
    timeouts;
    volume_configuration;
  }

type t = {
  tf_name : string;
  cluster : string prop;
  deployment_maximum_percent : float prop;
  deployment_minimum_healthy_percent : float prop;
  desired_count : float prop;
  enable_ecs_managed_tags : bool prop;
  enable_execute_command : bool prop;
  force_new_deployment : bool prop;
  health_check_grace_period_seconds : float prop;
  iam_role : string prop;
  id : string prop;
  launch_type : string prop;
  name : string prop;
  platform_version : string prop;
  propagate_tags : string prop;
  scheduling_strategy : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  task_definition : string prop;
  triggers : string Tf_core.assoc prop;
  wait_for_steady_state : bool prop;
}

let make ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?(alarms = [])
    ?(deployment_circuit_breaker = []) ?(deployment_controller = [])
    ?(network_configuration = []) ?(ordered_placement_strategy = [])
    ?(service_connect_configuration = []) ?(service_registries = [])
    ?timeouts ?(volume_configuration = []) ~name
    ~capacity_provider_strategy ~load_balancer ~placement_constraints
    __id =
  let __type = "aws_ecs_service" in
  let __attrs =
    ({
       tf_name = __id;
       cluster = Prop.computed __type __id "cluster";
       deployment_maximum_percent =
         Prop.computed __type __id "deployment_maximum_percent";
       deployment_minimum_healthy_percent =
         Prop.computed __type __id
           "deployment_minimum_healthy_percent";
       desired_count = Prop.computed __type __id "desired_count";
       enable_ecs_managed_tags =
         Prop.computed __type __id "enable_ecs_managed_tags";
       enable_execute_command =
         Prop.computed __type __id "enable_execute_command";
       force_new_deployment =
         Prop.computed __type __id "force_new_deployment";
       health_check_grace_period_seconds =
         Prop.computed __type __id
           "health_check_grace_period_seconds";
       iam_role = Prop.computed __type __id "iam_role";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       name = Prop.computed __type __id "name";
       platform_version =
         Prop.computed __type __id "platform_version";
       propagate_tags = Prop.computed __type __id "propagate_tags";
       scheduling_strategy =
         Prop.computed __type __id "scheduling_strategy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       task_definition = Prop.computed __type __id "task_definition";
       triggers = Prop.computed __type __id "triggers";
       wait_for_steady_state =
         Prop.computed __type __id "wait_for_steady_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_service
        (aws_ecs_service ?cluster ?deployment_maximum_percent
           ?deployment_minimum_healthy_percent ?desired_count
           ?enable_ecs_managed_tags ?enable_execute_command
           ?force_new_deployment ?health_check_grace_period_seconds
           ?iam_role ?id ?launch_type ?platform_version
           ?propagate_tags ?scheduling_strategy ?tags ?tags_all
           ?task_definition ?triggers ?wait_for_steady_state ~alarms
           ~deployment_circuit_breaker ~deployment_controller
           ~network_configuration ~ordered_placement_strategy
           ~service_connect_configuration ~service_registries
           ?timeouts ~volume_configuration ~name
           ~capacity_provider_strategy ~load_balancer
           ~placement_constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?(alarms = [])
    ?(deployment_circuit_breaker = []) ?(deployment_controller = [])
    ?(network_configuration = []) ?(ordered_placement_strategy = [])
    ?(service_connect_configuration = []) ?(service_registries = [])
    ?timeouts ?(volume_configuration = []) ~name
    ~capacity_provider_strategy ~load_balancer ~placement_constraints
    __id =
  let (r : _ Tf_core.resource) =
    make ?cluster ?deployment_maximum_percent
      ?deployment_minimum_healthy_percent ?desired_count
      ?enable_ecs_managed_tags ?enable_execute_command
      ?force_new_deployment ?health_check_grace_period_seconds
      ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
      ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
      ?wait_for_steady_state ~alarms ~deployment_circuit_breaker
      ~deployment_controller ~network_configuration
      ~ordered_placement_strategy ~service_connect_configuration
      ~service_registries ?timeouts ~volume_configuration ~name
      ~capacity_provider_strategy ~load_balancer
      ~placement_constraints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

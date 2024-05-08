(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = { kms_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key in
         ("kms_key", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type health_check_configuration = {
  healthy_threshold : float prop option; [@option]
  interval : float prop option; [@option]
  path : string prop option; [@option]
  protocol : string prop option; [@option]
  timeout : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check_configuration) -> ()

let yojson_of_health_check_configuration =
  (function
   | {
       healthy_threshold = v_healthy_threshold;
       interval = v_interval;
       path = v_path;
       protocol = v_protocol;
       timeout = v_timeout;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
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
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
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
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_check_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check_configuration

[@@@deriving.end]

type instance_configuration = {
  cpu : string prop option; [@option]
  instance_role_arn : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_configuration) -> ()

let yojson_of_instance_configuration =
  (function
   | {
       cpu = v_cpu;
       instance_role_arn = v_instance_role_arn;
       memory = v_memory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_instance_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration

[@@@deriving.end]

type network_configuration__egress_configuration = {
  egress_type : string prop option; [@option]
  vpc_connector_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration__egress_configuration) -> ()

let yojson_of_network_configuration__egress_configuration =
  (function
   | {
       egress_type = v_egress_type;
       vpc_connector_arn = v_vpc_connector_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_connector_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_connector_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_egress_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "egress_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration__egress_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration__egress_configuration

[@@@deriving.end]

type network_configuration__ingress_configuration = {
  is_publicly_accessible : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration__ingress_configuration) -> ()

let yojson_of_network_configuration__ingress_configuration =
  (function
   | { is_publicly_accessible = v_is_publicly_accessible } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_is_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_publicly_accessible", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration__ingress_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration__ingress_configuration

[@@@deriving.end]

type network_configuration = {
  ip_address_type : string prop option; [@option]
  egress_configuration :
    network_configuration__egress_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_configuration :
    network_configuration__ingress_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       ip_address_type = v_ip_address_type;
       egress_configuration = v_egress_configuration;
       ingress_configuration = v_ingress_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ingress_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_configuration__ingress_configuration)
               v_ingress_configuration
           in
           let bnd = "ingress_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_egress_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_configuration__egress_configuration)
               v_egress_configuration
           in
           let bnd = "egress_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type observability_configuration = {
  observability_configuration_arn : string prop option; [@option]
  observability_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : observability_configuration) -> ()

let yojson_of_observability_configuration =
  (function
   | {
       observability_configuration_arn =
         v_observability_configuration_arn;
       observability_enabled = v_observability_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_observability_enabled
         in
         ("observability_enabled", arg) :: bnds
       in
       let bnds =
         match v_observability_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "observability_configuration_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : observability_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_observability_configuration

[@@@deriving.end]

type source_configuration__authentication_configuration = {
  access_role_arn : string prop option; [@option]
  connection_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_configuration__authentication_configuration) -> ()

let yojson_of_source_configuration__authentication_configuration =
  (function
   | {
       access_role_arn = v_access_role_arn;
       connection_arn = v_connection_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_connection_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_configuration__authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_configuration__authentication_configuration

[@@@deriving.end]

type source_configuration__code_repository__code_configuration__code_configuration_values = {
  build_command : string prop option; [@option]
  port : string prop option; [@option]
  runtime : string prop;
  runtime_environment_secrets : (string * string prop) list option;
      [@option]
  runtime_environment_variables : (string * string prop) list option;
      [@option]
  start_command : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_configuration__code_repository__code_configuration__code_configuration_values) ->
  ()

let yojson_of_source_configuration__code_repository__code_configuration__code_configuration_values
    =
  (function
   | {
       build_command = v_build_command;
       port = v_port;
       runtime = v_runtime;
       runtime_environment_secrets = v_runtime_environment_secrets;
       runtime_environment_variables =
         v_runtime_environment_variables;
       start_command = v_start_command;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_environment_variables with
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
             let bnd = "runtime_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_environment_secrets with
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
             let bnd = "runtime_environment_secrets", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_configuration__code_repository__code_configuration__code_configuration_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_configuration__code_repository__code_configuration__code_configuration_values

[@@@deriving.end]

type source_configuration__code_repository__code_configuration = {
  configuration_source : string prop;
  code_configuration_values :
    source_configuration__code_repository__code_configuration__code_configuration_values
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_configuration__code_repository__code_configuration) ->
  ()

let yojson_of_source_configuration__code_repository__code_configuration
    =
  (function
   | {
       configuration_source = v_configuration_source;
       code_configuration_values = v_code_configuration_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_code_configuration_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__code_repository__code_configuration__code_configuration_values)
               v_code_configuration_values
           in
           let bnd = "code_configuration_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_source
         in
         ("configuration_source", arg) :: bnds
       in
       `Assoc bnds
    : source_configuration__code_repository__code_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_configuration__code_repository__code_configuration

[@@@deriving.end]

type source_configuration__code_repository__source_code_version = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_configuration__code_repository__source_code_version) ->
  ()

let yojson_of_source_configuration__code_repository__source_code_version
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : source_configuration__code_repository__source_code_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_configuration__code_repository__source_code_version

[@@@deriving.end]

type source_configuration__code_repository = {
  repository_url : string prop;
  source_directory : string prop option; [@option]
  code_configuration :
    source_configuration__code_repository__code_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  source_code_version :
    source_configuration__code_repository__source_code_version list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_configuration__code_repository) -> ()

let yojson_of_source_configuration__code_repository =
  (function
   | {
       repository_url = v_repository_url;
       source_directory = v_source_directory;
       code_configuration = v_code_configuration;
       source_code_version = v_source_code_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_source_code_version then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__code_repository__source_code_version)
               v_source_code_version
           in
           let bnd = "source_code_version", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_code_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__code_repository__code_configuration)
               v_code_configuration
           in
           let bnd = "code_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_directory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       `Assoc bnds
    : source_configuration__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_configuration__code_repository

[@@@deriving.end]

type source_configuration__image_repository__image_configuration = {
  port : string prop option; [@option]
  runtime_environment_secrets : (string * string prop) list option;
      [@option]
  runtime_environment_variables : (string * string prop) list option;
      [@option]
  start_command : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_configuration__image_repository__image_configuration) ->
  ()

let yojson_of_source_configuration__image_repository__image_configuration
    =
  (function
   | {
       port = v_port;
       runtime_environment_secrets = v_runtime_environment_secrets;
       runtime_environment_variables =
         v_runtime_environment_variables;
       start_command = v_start_command;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_environment_variables with
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
             let bnd = "runtime_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_environment_secrets with
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
             let bnd = "runtime_environment_secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_configuration__image_repository__image_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_configuration__image_repository__image_configuration

[@@@deriving.end]

type source_configuration__image_repository = {
  image_identifier : string prop;
  image_repository_type : string prop;
  image_configuration :
    source_configuration__image_repository__image_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_configuration__image_repository) -> ()

let yojson_of_source_configuration__image_repository =
  (function
   | {
       image_identifier = v_image_identifier;
       image_repository_type = v_image_repository_type;
       image_configuration = v_image_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_image_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__image_repository__image_configuration)
               v_image_configuration
           in
           let bnd = "image_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_repository_type
         in
         ("image_repository_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_identifier
         in
         ("image_identifier", arg) :: bnds
       in
       `Assoc bnds
    : source_configuration__image_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_configuration__image_repository

[@@@deriving.end]

type source_configuration = {
  auto_deployments_enabled : bool prop option; [@option]
  authentication_configuration :
    source_configuration__authentication_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  code_repository : source_configuration__code_repository list;
      [@default []] [@yojson_drop_default ( = )]
  image_repository : source_configuration__image_repository list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_configuration) -> ()

let yojson_of_source_configuration =
  (function
   | {
       auto_deployments_enabled = v_auto_deployments_enabled;
       authentication_configuration = v_authentication_configuration;
       code_repository = v_code_repository;
       image_repository = v_image_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_image_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__image_repository)
               v_image_repository
           in
           let bnd = "image_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_code_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__code_repository)
               v_code_repository
           in
           let bnd = "code_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_authentication_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_configuration__authentication_configuration)
               v_authentication_configuration
           in
           let bnd = "authentication_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_auto_deployments_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_deployments_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_configuration

[@@@deriving.end]

type aws_apprunner_service = {
  auto_scaling_configuration_arn : string prop option; [@option]
  id : string prop option; [@option]
  service_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  health_check_configuration : health_check_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  instance_configuration : instance_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  network_configuration : network_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  observability_configuration : observability_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  source_configuration : source_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_service) -> ()

let yojson_of_aws_apprunner_service =
  (function
   | {
       auto_scaling_configuration_arn =
         v_auto_scaling_configuration_arn;
       id = v_id;
       service_name = v_service_name;
       tags = v_tags;
       tags_all = v_tags_all;
       encryption_configuration = v_encryption_configuration;
       health_check_configuration = v_health_check_configuration;
       instance_configuration = v_instance_configuration;
       network_configuration = v_network_configuration;
       observability_configuration = v_observability_configuration;
       source_configuration = v_source_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_source_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_configuration)
               v_source_configuration
           in
           let bnd = "source_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_observability_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_observability_configuration)
               v_observability_configuration
           in
           let bnd = "observability_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_instance_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_configuration)
               v_instance_configuration
           in
           let bnd = "instance_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_health_check_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_check_configuration)
               v_health_check_configuration
           in
           let bnd = "health_check_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
         match v_auto_scaling_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_scaling_configuration_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_apprunner_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_service

[@@@deriving.end]

let encryption_configuration ~kms_key () : encryption_configuration =
  { kms_key }

let health_check_configuration ?healthy_threshold ?interval ?path
    ?protocol ?timeout ?unhealthy_threshold () :
    health_check_configuration =
  {
    healthy_threshold;
    interval;
    path;
    protocol;
    timeout;
    unhealthy_threshold;
  }

let instance_configuration ?cpu ?instance_role_arn ?memory () :
    instance_configuration =
  { cpu; instance_role_arn; memory }

let network_configuration__egress_configuration ?egress_type
    ?vpc_connector_arn () :
    network_configuration__egress_configuration =
  { egress_type; vpc_connector_arn }

let network_configuration__ingress_configuration
    ?is_publicly_accessible () :
    network_configuration__ingress_configuration =
  { is_publicly_accessible }

let network_configuration ?ip_address_type
    ?(egress_configuration = []) ?(ingress_configuration = []) () :
    network_configuration =
  { ip_address_type; egress_configuration; ingress_configuration }

let observability_configuration ?observability_configuration_arn
    ~observability_enabled () : observability_configuration =
  { observability_configuration_arn; observability_enabled }

let source_configuration__authentication_configuration
    ?access_role_arn ?connection_arn () :
    source_configuration__authentication_configuration =
  { access_role_arn; connection_arn }

let source_configuration__code_repository__code_configuration__code_configuration_values
    ?build_command ?port ?runtime_environment_secrets
    ?runtime_environment_variables ?start_command ~runtime () :
    source_configuration__code_repository__code_configuration__code_configuration_values
    =
  {
    build_command;
    port;
    runtime;
    runtime_environment_secrets;
    runtime_environment_variables;
    start_command;
  }

let source_configuration__code_repository__code_configuration
    ?(code_configuration_values = []) ~configuration_source () :
    source_configuration__code_repository__code_configuration =
  { configuration_source; code_configuration_values }

let source_configuration__code_repository__source_code_version ~type_
    ~value () :
    source_configuration__code_repository__source_code_version =
  { type_; value }

let source_configuration__code_repository ?source_directory
    ?(code_configuration = []) ~repository_url ~source_code_version
    () : source_configuration__code_repository =
  {
    repository_url;
    source_directory;
    code_configuration;
    source_code_version;
  }

let source_configuration__image_repository__image_configuration ?port
    ?runtime_environment_secrets ?runtime_environment_variables
    ?start_command () :
    source_configuration__image_repository__image_configuration =
  {
    port;
    runtime_environment_secrets;
    runtime_environment_variables;
    start_command;
  }

let source_configuration__image_repository
    ?(image_configuration = []) ~image_identifier
    ~image_repository_type () :
    source_configuration__image_repository =
  { image_identifier; image_repository_type; image_configuration }

let source_configuration ?auto_deployments_enabled
    ?(authentication_configuration = []) ?(code_repository = [])
    ?(image_repository = []) () : source_configuration =
  {
    auto_deployments_enabled;
    authentication_configuration;
    code_repository;
    image_repository;
  }

let aws_apprunner_service ?auto_scaling_configuration_arn ?id ?tags
    ?tags_all ?(encryption_configuration = [])
    ?(health_check_configuration = []) ?(instance_configuration = [])
    ?(network_configuration = []) ?(observability_configuration = [])
    ~service_name ~source_configuration () : aws_apprunner_service =
  {
    auto_scaling_configuration_arn;
    id;
    service_name;
    tags;
    tags_all;
    encryption_configuration;
    health_check_configuration;
    instance_configuration;
    network_configuration;
    observability_configuration;
    source_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_scaling_configuration_arn : string prop;
  id : string prop;
  service_id : string prop;
  service_name : string prop;
  service_url : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?auto_scaling_configuration_arn ?id ?tags ?tags_all
    ?(encryption_configuration = [])
    ?(health_check_configuration = []) ?(instance_configuration = [])
    ?(network_configuration = []) ?(observability_configuration = [])
    ~service_name ~source_configuration __id =
  let __type = "aws_apprunner_service" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_scaling_configuration_arn =
         Prop.computed __type __id "auto_scaling_configuration_arn";
       id = Prop.computed __type __id "id";
       service_id = Prop.computed __type __id "service_id";
       service_name = Prop.computed __type __id "service_name";
       service_url = Prop.computed __type __id "service_url";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_service
        (aws_apprunner_service ?auto_scaling_configuration_arn ?id
           ?tags ?tags_all ~encryption_configuration
           ~health_check_configuration ~instance_configuration
           ~network_configuration ~observability_configuration
           ~service_name ~source_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_scaling_configuration_arn ?id ?tags
    ?tags_all ?(encryption_configuration = [])
    ?(health_check_configuration = []) ?(instance_configuration = [])
    ?(network_configuration = []) ?(observability_configuration = [])
    ~service_name ~source_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_scaling_configuration_arn ?id ?tags ?tags_all
      ~encryption_configuration ~health_check_configuration
      ~instance_configuration ~network_configuration
      ~observability_configuration ~service_name
      ~source_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_trigger_config__scale__rules__authentication = {
  secret_name : string prop;
  trigger_parameter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_trigger_config__scale__rules__authentication) -> ()

let yojson_of_event_trigger_config__scale__rules__authentication =
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
    : event_trigger_config__scale__rules__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger_config__scale__rules__authentication

[@@@deriving.end]

type event_trigger_config__scale__rules = {
  custom_rule_type : string prop;
  metadata : (string * string prop) list;
  name : string prop;
  authentication :
    event_trigger_config__scale__rules__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger_config__scale__rules) -> ()

let yojson_of_event_trigger_config__scale__rules =
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
                yojson_of_event_trigger_config__scale__rules__authentication)
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
    : event_trigger_config__scale__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger_config__scale__rules

[@@@deriving.end]

type event_trigger_config__scale = {
  max_executions : float prop option; [@option]
  min_executions : float prop option; [@option]
  polling_interval_in_seconds : float prop option; [@option]
  rules : event_trigger_config__scale__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger_config__scale) -> ()

let yojson_of_event_trigger_config__scale =
  (function
   | {
       max_executions = v_max_executions;
       min_executions = v_min_executions;
       polling_interval_in_seconds = v_polling_interval_in_seconds;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_event_trigger_config__scale__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_polling_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "polling_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_executions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_executions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_executions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_executions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_trigger_config__scale ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger_config__scale

[@@@deriving.end]

type event_trigger_config = {
  parallelism : float prop option; [@option]
  replica_completion_count : float prop option; [@option]
  scale : event_trigger_config__scale list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger_config) -> ()

let yojson_of_event_trigger_config =
  (function
   | {
       parallelism = v_parallelism;
       replica_completion_count = v_replica_completion_count;
       scale = v_scale;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scale then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_trigger_config__scale)
               v_scale
           in
           let bnd = "scale", arg in
           bnd :: bnds
       in
       let bnds =
         match v_replica_completion_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_completion_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_trigger_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger_config

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

type manual_trigger_config = {
  parallelism : float prop option; [@option]
  replica_completion_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : manual_trigger_config) -> ()

let yojson_of_manual_trigger_config =
  (function
   | {
       parallelism = v_parallelism;
       replica_completion_count = v_replica_completion_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replica_completion_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_completion_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : manual_trigger_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_manual_trigger_config

[@@@deriving.end]

type registries = {
  identity : string prop option; [@option]
  password_secret_name : string prop option; [@option]
  server : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registries) -> ()

let yojson_of_registries =
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
    : registries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registries

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

type schedule_trigger_config = {
  cron_expression : string prop;
  parallelism : float prop option; [@option]
  replica_completion_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule_trigger_config) -> ()

let yojson_of_schedule_trigger_config =
  (function
   | {
       cron_expression = v_cron_expression;
       parallelism = v_parallelism;
       replica_completion_count = v_replica_completion_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replica_completion_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_completion_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cron_expression
         in
         ("cron_expression", arg) :: bnds
       in
       `Assoc bnds
    : schedule_trigger_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule_trigger_config

[@@@deriving.end]

type secret = {
  identity : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | {
       identity = v_identity;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       value = v_value;
     } ->
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
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type secrets = {
  identity : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets) -> ()

let yojson_of_secrets =
  (function
   | {
       identity = v_identity;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       value = v_value;
     } ->
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
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets

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
  container : template__container list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  init_container : template__init_container list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume : template__volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       container = v_container;
       init_container = v_init_container;
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
         if Stdlib.( = ) [] v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__container)
               v_container
           in
           let bnd = "container", arg in
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

type azurerm_container_app_job = {
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  replica_retry_limit : float prop option; [@option]
  replica_timeout_in_seconds : float prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  workload_profile_name : string prop option; [@option]
  event_trigger_config : event_trigger_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  manual_trigger_config : manual_trigger_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registries : registries list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry : registry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule_trigger_config : schedule_trigger_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secrets : secrets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template : template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_job) -> ()

let yojson_of_azurerm_container_app_job =
  (function
   | {
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       location = v_location;
       name = v_name;
       replica_retry_limit = v_replica_retry_limit;
       replica_timeout_in_seconds = v_replica_timeout_in_seconds;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       workload_profile_name = v_workload_profile_name;
       event_trigger_config = v_event_trigger_config;
       identity = v_identity;
       manual_trigger_config = v_manual_trigger_config;
       registries = v_registries;
       registry = v_registry;
       schedule_trigger_config = v_schedule_trigger_config;
       secret = v_secret;
       secrets = v_secrets;
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
         if Stdlib.( = ) [] v_secrets then bnds
         else
           let arg = (yojson_of_list yojson_of_secrets) v_secrets in
           let bnd = "secrets", arg in
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
         if Stdlib.( = ) [] v_schedule_trigger_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule_trigger_config)
               v_schedule_trigger_config
           in
           let bnd = "schedule_trigger_config", arg in
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
         if Stdlib.( = ) [] v_registries then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registries) v_registries
           in
           let bnd = "registries", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_manual_trigger_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_manual_trigger_config)
               v_manual_trigger_config
           in
           let bnd = "manual_trigger_config", arg in
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
         if Stdlib.( = ) [] v_event_trigger_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_trigger_config)
               v_event_trigger_config
           in
           let bnd = "event_trigger_config", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_replica_timeout_in_seconds
         in
         ("replica_timeout_in_seconds", arg) :: bnds
       in
       let bnds =
         match v_replica_retry_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_retry_limit", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_job

[@@@deriving.end]

let event_trigger_config__scale__rules__authentication ~secret_name
    ~trigger_parameter () :
    event_trigger_config__scale__rules__authentication =
  { secret_name; trigger_parameter }

let event_trigger_config__scale__rules ?(authentication = [])
    ~custom_rule_type ~metadata ~name () :
    event_trigger_config__scale__rules =
  { custom_rule_type; metadata; name; authentication }

let event_trigger_config__scale ?max_executions ?min_executions
    ?polling_interval_in_seconds ?(rules = []) () :
    event_trigger_config__scale =
  {
    max_executions;
    min_executions;
    polling_interval_in_seconds;
    rules;
  }

let event_trigger_config ?parallelism ?replica_completion_count
    ?(scale = []) () : event_trigger_config =
  { parallelism; replica_completion_count; scale }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let manual_trigger_config ?parallelism ?replica_completion_count () :
    manual_trigger_config =
  { parallelism; replica_completion_count }

let registries ?identity ?password_secret_name ?username ~server () :
    registries =
  { identity; password_secret_name; server; username }

let registry ?identity ?password_secret_name ?username ~server () :
    registry =
  { identity; password_secret_name; server; username }

let schedule_trigger_config ?parallelism ?replica_completion_count
    ~cron_expression () : schedule_trigger_config =
  { cron_expression; parallelism; replica_completion_count }

let secret ?identity ?key_vault_secret_id ?value ~name () : secret =
  { identity; key_vault_secret_id; name; value }

let secrets ?identity ?key_vault_secret_id ?value ~name () : secrets
    =
  { identity; key_vault_secret_id; name; value }

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

let template__volume ?storage_name ?storage_type ~name () :
    template__volume =
  { name; storage_name; storage_type }

let template ?(init_container = []) ?(volume = []) ~container () :
    template =
  { container; init_container; volume }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_job ?id ?replica_retry_limit ?tags
    ?workload_profile_name ?(event_trigger_config = [])
    ?(identity = []) ?(manual_trigger_config = []) ?(registries = [])
    ?(registry = []) ?(schedule_trigger_config = []) ?timeouts
    ~container_app_environment_id ~location ~name
    ~replica_timeout_in_seconds ~resource_group_name ~secret ~secrets
    ~template () : azurerm_container_app_job =
  {
    container_app_environment_id;
    id;
    location;
    name;
    replica_retry_limit;
    replica_timeout_in_seconds;
    resource_group_name;
    tags;
    workload_profile_name;
    event_trigger_config;
    identity;
    manual_trigger_config;
    registries;
    registry;
    schedule_trigger_config;
    secret;
    secrets;
    template;
    timeouts;
  }

type t = {
  tf_name : string;
  container_app_environment_id : string prop;
  event_stream_endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  replica_retry_limit : float prop;
  replica_timeout_in_seconds : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workload_profile_name : string prop;
}

let make ?id ?replica_retry_limit ?tags ?workload_profile_name
    ?(event_trigger_config = []) ?(identity = [])
    ?(manual_trigger_config = []) ?(registries = []) ?(registry = [])
    ?(schedule_trigger_config = []) ?timeouts
    ~container_app_environment_id ~location ~name
    ~replica_timeout_in_seconds ~resource_group_name ~secret ~secrets
    ~template __id =
  let __type = "azurerm_container_app_job" in
  let __attrs =
    ({
       tf_name = __id;
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       event_stream_endpoint =
         Prop.computed __type __id "event_stream_endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       replica_retry_limit =
         Prop.computed __type __id "replica_retry_limit";
       replica_timeout_in_seconds =
         Prop.computed __type __id "replica_timeout_in_seconds";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
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
      yojson_of_azurerm_container_app_job
        (azurerm_container_app_job ?id ?replica_retry_limit ?tags
           ?workload_profile_name ~event_trigger_config ~identity
           ~manual_trigger_config ~registries ~registry
           ~schedule_trigger_config ?timeouts
           ~container_app_environment_id ~location ~name
           ~replica_timeout_in_seconds ~resource_group_name ~secret
           ~secrets ~template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replica_retry_limit ?tags
    ?workload_profile_name ?(event_trigger_config = [])
    ?(identity = []) ?(manual_trigger_config = []) ?(registries = [])
    ?(registry = []) ?(schedule_trigger_config = []) ?timeouts
    ~container_app_environment_id ~location ~name
    ~replica_timeout_in_seconds ~resource_group_name ~secret ~secrets
    ~template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replica_retry_limit ?tags ?workload_profile_name
      ~event_trigger_config ~identity ~manual_trigger_config
      ~registries ~registry ~schedule_trigger_config ?timeouts
      ~container_app_environment_id ~location ~name
      ~replica_timeout_in_seconds ~resource_group_name ~secret
      ~secrets ~template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

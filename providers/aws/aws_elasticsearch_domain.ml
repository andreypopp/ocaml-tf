(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_security_options__master_user_options = {
  master_user_arn : string prop option; [@option]
  master_user_name : string prop option; [@option]
  master_user_password : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : advanced_security_options__master_user_options) -> ()

let yojson_of_advanced_security_options__master_user_options =
  (function
   | {
       master_user_arn = v_master_user_arn;
       master_user_name = v_master_user_name;
       master_user_password = v_master_user_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_master_user_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_user_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_user_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_user_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_user_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_security_options__master_user_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_security_options__master_user_options

[@@@deriving.end]

type advanced_security_options = {
  enabled : bool prop;
  internal_user_database_enabled : bool prop option; [@option]
  master_user_options :
    advanced_security_options__master_user_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_security_options) -> ()

let yojson_of_advanced_security_options =
  (function
   | {
       enabled = v_enabled;
       internal_user_database_enabled =
         v_internal_user_database_enabled;
       master_user_options = v_master_user_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_master_user_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_advanced_security_options__master_user_options)
               v_master_user_options
           in
           let bnd = "master_user_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_internal_user_database_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_user_database_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : advanced_security_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_security_options

[@@@deriving.end]

type auto_tune_options__maintenance_schedule__duration = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auto_tune_options__maintenance_schedule__duration) -> ()

let yojson_of_auto_tune_options__maintenance_schedule__duration =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : auto_tune_options__maintenance_schedule__duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_tune_options__maintenance_schedule__duration

[@@@deriving.end]

type auto_tune_options__maintenance_schedule = {
  cron_expression_for_recurrence : string prop;
  start_at : string prop;
  duration : auto_tune_options__maintenance_schedule__duration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_tune_options__maintenance_schedule) -> ()

let yojson_of_auto_tune_options__maintenance_schedule =
  (function
   | {
       cron_expression_for_recurrence =
         v_cron_expression_for_recurrence;
       start_at = v_start_at;
       duration = v_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_duration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auto_tune_options__maintenance_schedule__duration)
               v_duration
           in
           let bnd = "duration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_at in
         ("start_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cron_expression_for_recurrence
         in
         ("cron_expression_for_recurrence", arg) :: bnds
       in
       `Assoc bnds
    : auto_tune_options__maintenance_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_tune_options__maintenance_schedule

[@@@deriving.end]

type auto_tune_options = {
  desired_state : string prop;
  rollback_on_disable : string prop option; [@option]
  maintenance_schedule : auto_tune_options__maintenance_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_tune_options) -> ()

let yojson_of_auto_tune_options =
  (function
   | {
       desired_state = v_desired_state;
       rollback_on_disable = v_rollback_on_disable;
       maintenance_schedule = v_maintenance_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auto_tune_options__maintenance_schedule)
               v_maintenance_schedule
           in
           let bnd = "maintenance_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rollback_on_disable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rollback_on_disable", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_desired_state in
         ("desired_state", arg) :: bnds
       in
       `Assoc bnds
    : auto_tune_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_tune_options

[@@@deriving.end]

type cluster_config__cold_storage_options = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__cold_storage_options) -> ()

let yojson_of_cluster_config__cold_storage_options =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__cold_storage_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__cold_storage_options

[@@@deriving.end]

type cluster_config__zone_awareness_config = {
  availability_zone_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__zone_awareness_config) -> ()

let yojson_of_cluster_config__zone_awareness_config =
  (function
   | { availability_zone_count = v_availability_zone_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_availability_zone_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "availability_zone_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__zone_awareness_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__zone_awareness_config

[@@@deriving.end]

type cluster_config = {
  dedicated_master_count : float prop option; [@option]
  dedicated_master_enabled : bool prop option; [@option]
  dedicated_master_type : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_type : string prop option; [@option]
  warm_count : float prop option; [@option]
  warm_enabled : bool prop option; [@option]
  warm_type : string prop option; [@option]
  zone_awareness_enabled : bool prop option; [@option]
  cold_storage_options : cluster_config__cold_storage_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zone_awareness_config : cluster_config__zone_awareness_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config) -> ()

let yojson_of_cluster_config =
  (function
   | {
       dedicated_master_count = v_dedicated_master_count;
       dedicated_master_enabled = v_dedicated_master_enabled;
       dedicated_master_type = v_dedicated_master_type;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       warm_count = v_warm_count;
       warm_enabled = v_warm_enabled;
       warm_type = v_warm_type;
       zone_awareness_enabled = v_zone_awareness_enabled;
       cold_storage_options = v_cold_storage_options;
       zone_awareness_config = v_zone_awareness_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zone_awareness_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_config__zone_awareness_config)
               v_zone_awareness_config
           in
           let bnd = "zone_awareness_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cold_storage_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_config__cold_storage_options)
               v_cold_storage_options
           in
           let bnd = "cold_storage_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_awareness_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_awareness_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_warm_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "warm_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_warm_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "warm_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_warm_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "warm_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_master_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dedicated_master_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_master_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dedicated_master_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_master_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dedicated_master_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config

[@@@deriving.end]

type cognito_options = {
  enabled : bool prop option; [@option]
  identity_pool_id : string prop;
  role_arn : string prop;
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cognito_options) -> ()

let yojson_of_cognito_options =
  (function
   | {
       enabled = v_enabled;
       identity_pool_id = v_identity_pool_id;
       role_arn = v_role_arn;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_pool_id
         in
         ("identity_pool_id", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cognito_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cognito_options

[@@@deriving.end]

type domain_endpoint_options = {
  custom_endpoint : string prop option; [@option]
  custom_endpoint_certificate_arn : string prop option; [@option]
  custom_endpoint_enabled : bool prop option; [@option]
  enforce_https : bool prop option; [@option]
  tls_security_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_endpoint_options) -> ()

let yojson_of_domain_endpoint_options =
  (function
   | {
       custom_endpoint = v_custom_endpoint;
       custom_endpoint_certificate_arn =
         v_custom_endpoint_certificate_arn;
       custom_endpoint_enabled = v_custom_endpoint_enabled;
       enforce_https = v_enforce_https;
       tls_security_policy = v_tls_security_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_security_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_https", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "custom_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_endpoint_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_endpoint_certificate_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : domain_endpoint_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_endpoint_options

[@@@deriving.end]

type ebs_options = {
  ebs_enabled : bool prop;
  iops : float prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_options) -> ()

let yojson_of_ebs_options =
  (function
   | {
       ebs_enabled = v_ebs_enabled;
       iops = v_iops;
       throughput = v_throughput;
       volume_size = v_volume_size;
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
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
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
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ebs_enabled in
         ("ebs_enabled", arg) :: bnds
       in
       `Assoc bnds
    : ebs_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_options

[@@@deriving.end]

type encrypt_at_rest = {
  enabled : bool prop;
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encrypt_at_rest) -> ()

let yojson_of_encrypt_at_rest =
  (function
   | { enabled = v_enabled; kms_key_id = v_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : encrypt_at_rest -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encrypt_at_rest

[@@@deriving.end]

type log_publishing_options = {
  cloudwatch_log_group_arn : string prop;
  enabled : bool prop option; [@option]
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_publishing_options) -> ()

let yojson_of_log_publishing_options =
  (function
   | {
       cloudwatch_log_group_arn = v_cloudwatch_log_group_arn;
       enabled = v_enabled;
       log_type = v_log_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudwatch_log_group_arn
         in
         ("cloudwatch_log_group_arn", arg) :: bnds
       in
       `Assoc bnds
    : log_publishing_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_publishing_options

[@@@deriving.end]

type node_to_node_encryption = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_to_node_encryption) -> ()

let yojson_of_node_to_node_encryption =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : node_to_node_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_to_node_encryption

[@@@deriving.end]

type snapshot_options = {
  automated_snapshot_start_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_options) -> ()

let yojson_of_snapshot_options =
  (function
   | {
       automated_snapshot_start_hour =
         v_automated_snapshot_start_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_automated_snapshot_start_hour
         in
         ("automated_snapshot_start_hour", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_options

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

type vpc_options = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_options) -> ()

let yojson_of_vpc_options =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_options

[@@@deriving.end]

type aws_elasticsearch_domain = {
  access_policies : string prop option; [@option]
  advanced_options : (string * string prop) list option; [@option]
  domain_name : string prop;
  elasticsearch_version : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  advanced_security_options : advanced_security_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_tune_options : auto_tune_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cluster_config : cluster_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cognito_options : cognito_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain_endpoint_options : domain_endpoint_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebs_options : ebs_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encrypt_at_rest : encrypt_at_rest list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_publishing_options : log_publishing_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_to_node_encryption : node_to_node_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot_options : snapshot_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpc_options : vpc_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticsearch_domain) -> ()

let yojson_of_aws_elasticsearch_domain =
  (function
   | {
       access_policies = v_access_policies;
       advanced_options = v_advanced_options;
       domain_name = v_domain_name;
       elasticsearch_version = v_elasticsearch_version;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       advanced_security_options = v_advanced_security_options;
       auto_tune_options = v_auto_tune_options;
       cluster_config = v_cluster_config;
       cognito_options = v_cognito_options;
       domain_endpoint_options = v_domain_endpoint_options;
       ebs_options = v_ebs_options;
       encrypt_at_rest = v_encrypt_at_rest;
       log_publishing_options = v_log_publishing_options;
       node_to_node_encryption = v_node_to_node_encryption;
       snapshot_options = v_snapshot_options;
       timeouts = v_timeouts;
       vpc_options = v_vpc_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_options) v_vpc_options
           in
           let bnd = "vpc_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_snapshot_options)
               v_snapshot_options
           in
           let bnd = "snapshot_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_to_node_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_to_node_encryption)
               v_node_to_node_encryption
           in
           let bnd = "node_to_node_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_publishing_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_publishing_options)
               v_log_publishing_options
           in
           let bnd = "log_publishing_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encrypt_at_rest then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encrypt_at_rest)
               v_encrypt_at_rest
           in
           let bnd = "encrypt_at_rest", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ebs_options) v_ebs_options
           in
           let bnd = "ebs_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domain_endpoint_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_domain_endpoint_options)
               v_domain_endpoint_options
           in
           let bnd = "domain_endpoint_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cognito_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cognito_options)
               v_cognito_options
           in
           let bnd = "cognito_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_config)
               v_cluster_config
           in
           let bnd = "cluster_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_tune_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_tune_options)
               v_auto_tune_options
           in
           let bnd = "auto_tune_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_security_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_security_options)
               v_advanced_security_options
           in
           let bnd = "advanced_security_options", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticsearch_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticsearch_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_advanced_options with
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
             let bnd = "advanced_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_policies", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticsearch_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticsearch_domain

[@@@deriving.end]

let advanced_security_options__master_user_options ?master_user_arn
    ?master_user_name ?master_user_password () :
    advanced_security_options__master_user_options =
  { master_user_arn; master_user_name; master_user_password }

let advanced_security_options ?internal_user_database_enabled
    ?(master_user_options = []) ~enabled () :
    advanced_security_options =
  { enabled; internal_user_database_enabled; master_user_options }

let auto_tune_options__maintenance_schedule__duration ~unit ~value ()
    : auto_tune_options__maintenance_schedule__duration =
  { unit; value }

let auto_tune_options__maintenance_schedule
    ~cron_expression_for_recurrence ~start_at ~duration () :
    auto_tune_options__maintenance_schedule =
  { cron_expression_for_recurrence; start_at; duration }

let auto_tune_options ?rollback_on_disable ~desired_state
    ~maintenance_schedule () : auto_tune_options =
  { desired_state; rollback_on_disable; maintenance_schedule }

let cluster_config__cold_storage_options ?enabled () :
    cluster_config__cold_storage_options =
  { enabled }

let cluster_config__zone_awareness_config ?availability_zone_count ()
    : cluster_config__zone_awareness_config =
  { availability_zone_count }

let cluster_config ?dedicated_master_count ?dedicated_master_enabled
    ?dedicated_master_type ?instance_count ?instance_type ?warm_count
    ?warm_enabled ?warm_type ?zone_awareness_enabled
    ?(cold_storage_options = []) ?(zone_awareness_config = []) () :
    cluster_config =
  {
    dedicated_master_count;
    dedicated_master_enabled;
    dedicated_master_type;
    instance_count;
    instance_type;
    warm_count;
    warm_enabled;
    warm_type;
    zone_awareness_enabled;
    cold_storage_options;
    zone_awareness_config;
  }

let cognito_options ?enabled ~identity_pool_id ~role_arn
    ~user_pool_id () : cognito_options =
  { enabled; identity_pool_id; role_arn; user_pool_id }

let domain_endpoint_options ?custom_endpoint
    ?custom_endpoint_certificate_arn ?custom_endpoint_enabled
    ?enforce_https ?tls_security_policy () : domain_endpoint_options
    =
  {
    custom_endpoint;
    custom_endpoint_certificate_arn;
    custom_endpoint_enabled;
    enforce_https;
    tls_security_policy;
  }

let ebs_options ?iops ?throughput ?volume_size ?volume_type
    ~ebs_enabled () : ebs_options =
  { ebs_enabled; iops; throughput; volume_size; volume_type }

let encrypt_at_rest ?kms_key_id ~enabled () : encrypt_at_rest =
  { enabled; kms_key_id }

let log_publishing_options ?enabled ~cloudwatch_log_group_arn
    ~log_type () : log_publishing_options =
  { cloudwatch_log_group_arn; enabled; log_type }

let node_to_node_encryption ~enabled () : node_to_node_encryption =
  { enabled }

let snapshot_options ~automated_snapshot_start_hour () :
    snapshot_options =
  { automated_snapshot_start_hour }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_options ?security_group_ids ?subnet_ids () : vpc_options =
  { security_group_ids; subnet_ids }

let aws_elasticsearch_domain ?access_policies ?advanced_options
    ?elasticsearch_version ?id ?tags ?tags_all
    ?(advanced_security_options = []) ?(auto_tune_options = [])
    ?(cluster_config = []) ?(cognito_options = [])
    ?(domain_endpoint_options = []) ?(ebs_options = [])
    ?(encrypt_at_rest = []) ?(node_to_node_encryption = [])
    ?(snapshot_options = []) ?timeouts ?(vpc_options = [])
    ~domain_name ~log_publishing_options () :
    aws_elasticsearch_domain =
  {
    access_policies;
    advanced_options;
    domain_name;
    elasticsearch_version;
    id;
    tags;
    tags_all;
    advanced_security_options;
    auto_tune_options;
    cluster_config;
    cognito_options;
    domain_endpoint_options;
    ebs_options;
    encrypt_at_rest;
    log_publishing_options;
    node_to_node_encryption;
    snapshot_options;
    timeouts;
    vpc_options;
  }

type t = {
  tf_name : string;
  access_policies : string prop;
  advanced_options : (string * string) list prop;
  arn : string prop;
  domain_id : string prop;
  domain_name : string prop;
  elasticsearch_version : string prop;
  endpoint : string prop;
  id : string prop;
  kibana_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?access_policies ?advanced_options ?elasticsearch_version
    ?id ?tags ?tags_all ?(advanced_security_options = [])
    ?(auto_tune_options = []) ?(cluster_config = [])
    ?(cognito_options = []) ?(domain_endpoint_options = [])
    ?(ebs_options = []) ?(encrypt_at_rest = [])
    ?(node_to_node_encryption = []) ?(snapshot_options = [])
    ?timeouts ?(vpc_options = []) ~domain_name
    ~log_publishing_options __id =
  let __type = "aws_elasticsearch_domain" in
  let __attrs =
    ({
       tf_name = __id;
       access_policies = Prop.computed __type __id "access_policies";
       advanced_options =
         Prop.computed __type __id "advanced_options";
       arn = Prop.computed __type __id "arn";
       domain_id = Prop.computed __type __id "domain_id";
       domain_name = Prop.computed __type __id "domain_name";
       elasticsearch_version =
         Prop.computed __type __id "elasticsearch_version";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       kibana_endpoint = Prop.computed __type __id "kibana_endpoint";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticsearch_domain
        (aws_elasticsearch_domain ?access_policies ?advanced_options
           ?elasticsearch_version ?id ?tags ?tags_all
           ~advanced_security_options ~auto_tune_options
           ~cluster_config ~cognito_options ~domain_endpoint_options
           ~ebs_options ~encrypt_at_rest ~node_to_node_encryption
           ~snapshot_options ?timeouts ~vpc_options ~domain_name
           ~log_publishing_options ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policies ?advanced_options
    ?elasticsearch_version ?id ?tags ?tags_all
    ?(advanced_security_options = []) ?(auto_tune_options = [])
    ?(cluster_config = []) ?(cognito_options = [])
    ?(domain_endpoint_options = []) ?(ebs_options = [])
    ?(encrypt_at_rest = []) ?(node_to_node_encryption = [])
    ?(snapshot_options = []) ?timeouts ?(vpc_options = [])
    ~domain_name ~log_publishing_options __id =
  let (r : _ Tf_core.resource) =
    make ?access_policies ?advanced_options ?elasticsearch_version
      ?id ?tags ?tags_all ~advanced_security_options
      ~auto_tune_options ~cluster_config ~cognito_options
      ~domain_endpoint_options ~ebs_options ~encrypt_at_rest
      ~node_to_node_encryption ~snapshot_options ?timeouts
      ~vpc_options ~domain_name ~log_publishing_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

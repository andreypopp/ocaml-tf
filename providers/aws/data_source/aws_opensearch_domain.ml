(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type off_peak_window_options__off_peak_window__window_start_time = {
  hours : float prop;
  minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       off_peak_window_options__off_peak_window__window_start_time) ->
  ()

let yojson_of_off_peak_window_options__off_peak_window__window_start_time
    =
  (function
   | { hours = v_hours; minutes = v_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : off_peak_window_options__off_peak_window__window_start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_off_peak_window_options__off_peak_window__window_start_time

[@@@deriving.end]

type off_peak_window_options__off_peak_window = {
  window_start_time :
    off_peak_window_options__off_peak_window__window_start_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : off_peak_window_options__off_peak_window) -> ()

let yojson_of_off_peak_window_options__off_peak_window =
  (function
   | { window_start_time = v_window_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_window_start_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_off_peak_window_options__off_peak_window__window_start_time)
               v_window_start_time
           in
           let bnd = "window_start_time", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : off_peak_window_options__off_peak_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_off_peak_window_options__off_peak_window

[@@@deriving.end]

type off_peak_window_options = unit [@@deriving_inline yojson_of]

let _ = fun (_ : off_peak_window_options) -> ()

let yojson_of_off_peak_window_options =
  (yojson_of_unit
    : off_peak_window_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_off_peak_window_options

[@@@deriving.end]

type advanced_security_options = {
  anonymous_auth_enabled : bool prop;
  enabled : bool prop;
  internal_user_database_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_security_options) -> ()

let yojson_of_advanced_security_options =
  (function
   | {
       anonymous_auth_enabled = v_anonymous_auth_enabled;
       enabled = v_enabled;
       internal_user_database_enabled =
         v_internal_user_database_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_internal_user_database_enabled
         in
         ("internal_user_database_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_anonymous_auth_enabled
         in
         ("anonymous_auth_enabled", arg) :: bnds
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
  duration : auto_tune_options__maintenance_schedule__duration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  start_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_tune_options__maintenance_schedule) -> ()

let yojson_of_auto_tune_options__maintenance_schedule =
  (function
   | {
       cron_expression_for_recurrence =
         v_cron_expression_for_recurrence;
       duration = v_duration;
       start_at = v_start_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_at in
         ("start_at", arg) :: bnds
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
  maintenance_schedule :
    auto_tune_options__maintenance_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rollback_on_disable : string prop;
  use_off_peak_window : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_tune_options) -> ()

let yojson_of_auto_tune_options =
  (function
   | {
       desired_state = v_desired_state;
       maintenance_schedule = v_maintenance_schedule;
       rollback_on_disable = v_rollback_on_disable;
       use_off_peak_window = v_use_off_peak_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_off_peak_window
         in
         ("use_off_peak_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rollback_on_disable
         in
         ("rollback_on_disable", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_desired_state in
         ("desired_state", arg) :: bnds
       in
       `Assoc bnds
    : auto_tune_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_tune_options

[@@@deriving.end]

type cluster_config__zone_awareness_config = {
  availability_zone_count : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_availability_zone_count
         in
         ("availability_zone_count", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__zone_awareness_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__zone_awareness_config

[@@@deriving.end]

type cluster_config__cold_storage_options = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__cold_storage_options) -> ()

let yojson_of_cluster_config__cold_storage_options =
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
    : cluster_config__cold_storage_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__cold_storage_options

[@@@deriving.end]

type cluster_config = {
  cold_storage_options : cluster_config__cold_storage_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dedicated_master_count : float prop;
  dedicated_master_enabled : bool prop;
  dedicated_master_type : string prop;
  instance_count : float prop;
  instance_type : string prop;
  multi_az_with_standby_enabled : bool prop;
  warm_count : float prop;
  warm_enabled : bool prop;
  warm_type : string prop;
  zone_awareness_config : cluster_config__zone_awareness_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zone_awareness_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config) -> ()

let yojson_of_cluster_config =
  (function
   | {
       cold_storage_options = v_cold_storage_options;
       dedicated_master_count = v_dedicated_master_count;
       dedicated_master_enabled = v_dedicated_master_enabled;
       dedicated_master_type = v_dedicated_master_type;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       multi_az_with_standby_enabled =
         v_multi_az_with_standby_enabled;
       warm_count = v_warm_count;
       warm_enabled = v_warm_enabled;
       warm_type = v_warm_type;
       zone_awareness_config = v_zone_awareness_config;
       zone_awareness_enabled = v_zone_awareness_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_zone_awareness_enabled
         in
         ("zone_awareness_enabled", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_warm_type in
         ("warm_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_warm_enabled in
         ("warm_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_warm_count in
         ("warm_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_multi_az_with_standby_enabled
         in
         ("multi_az_with_standby_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dedicated_master_type
         in
         ("dedicated_master_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_dedicated_master_enabled
         in
         ("dedicated_master_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_dedicated_master_count
         in
         ("dedicated_master_count", arg) :: bnds
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
       `Assoc bnds
    : cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config

[@@@deriving.end]

type cognito_options = {
  enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : cognito_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cognito_options

[@@@deriving.end]

type ebs_options = {
  ebs_enabled : bool prop;
  iops : float prop;
  throughput : float prop;
  volume_size : float prop;
  volume_type : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ebs_enabled in
         ("ebs_enabled", arg) :: bnds
       in
       `Assoc bnds
    : ebs_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_options

[@@@deriving.end]

type encryption_at_rest = {
  enabled : bool prop;
  kms_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_at_rest) -> ()

let yojson_of_encryption_at_rest =
  (function
   | { enabled = v_enabled; kms_key_id = v_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : encryption_at_rest -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_at_rest

[@@@deriving.end]

type log_publishing_options = {
  cloudwatch_log_group_arn : string prop;
  enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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

type software_update_options = {
  auto_software_update_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : software_update_options) -> ()

let yojson_of_software_update_options =
  (function
   | {
       auto_software_update_enabled = v_auto_software_update_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_auto_software_update_enabled
         in
         ("auto_software_update_enabled", arg) :: bnds
       in
       `Assoc bnds
    : software_update_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_software_update_options

[@@@deriving.end]

type vpc_options = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_options) -> ()

let yojson_of_vpc_options =
  (function
   | {
       availability_zones = v_availability_zones;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_options

[@@@deriving.end]

type aws_opensearch_domain = {
  domain_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  off_peak_window_options : off_peak_window_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_domain) -> ()

let yojson_of_aws_opensearch_domain =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       tags = v_tags;
       off_peak_window_options = v_off_peak_window_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_off_peak_window_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_off_peak_window_options)
               v_off_peak_window_options
           in
           let bnd = "off_peak_window_options", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearch_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_domain

[@@@deriving.end]

let off_peak_window_options () = ()

let aws_opensearch_domain ?id ?tags ?(off_peak_window_options = [])
    ~domain_name () : aws_opensearch_domain =
  { domain_name; id; tags; off_peak_window_options }

type t = {
  tf_name : string;
  access_policies : string prop;
  advanced_options : string Tf_core.assoc prop;
  advanced_security_options : advanced_security_options list prop;
  arn : string prop;
  auto_tune_options : auto_tune_options list prop;
  cluster_config : cluster_config list prop;
  cognito_options : cognito_options list prop;
  created : bool prop;
  dashboard_endpoint : string prop;
  deleted : bool prop;
  domain_id : string prop;
  domain_name : string prop;
  ebs_options : ebs_options list prop;
  encryption_at_rest : encryption_at_rest list prop;
  endpoint : string prop;
  engine_version : string prop;
  id : string prop;
  ip_address_type : string prop;
  kibana_endpoint : string prop;
  log_publishing_options : log_publishing_options list prop;
  node_to_node_encryption : node_to_node_encryption list prop;
  processing : bool prop;
  snapshot_options : snapshot_options list prop;
  software_update_options : software_update_options list prop;
  tags : string Tf_core.assoc prop;
  vpc_options : vpc_options list prop;
}

let make ?id ?tags ?(off_peak_window_options = []) ~domain_name __id
    =
  let __type = "aws_opensearch_domain" in
  let __attrs =
    ({
       tf_name = __id;
       access_policies = Prop.computed __type __id "access_policies";
       advanced_options =
         Prop.computed __type __id "advanced_options";
       advanced_security_options =
         Prop.computed __type __id "advanced_security_options";
       arn = Prop.computed __type __id "arn";
       auto_tune_options =
         Prop.computed __type __id "auto_tune_options";
       cluster_config = Prop.computed __type __id "cluster_config";
       cognito_options = Prop.computed __type __id "cognito_options";
       created = Prop.computed __type __id "created";
       dashboard_endpoint =
         Prop.computed __type __id "dashboard_endpoint";
       deleted = Prop.computed __type __id "deleted";
       domain_id = Prop.computed __type __id "domain_id";
       domain_name = Prop.computed __type __id "domain_name";
       ebs_options = Prop.computed __type __id "ebs_options";
       encryption_at_rest =
         Prop.computed __type __id "encryption_at_rest";
       endpoint = Prop.computed __type __id "endpoint";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       kibana_endpoint = Prop.computed __type __id "kibana_endpoint";
       log_publishing_options =
         Prop.computed __type __id "log_publishing_options";
       node_to_node_encryption =
         Prop.computed __type __id "node_to_node_encryption";
       processing = Prop.computed __type __id "processing";
       snapshot_options =
         Prop.computed __type __id "snapshot_options";
       software_update_options =
         Prop.computed __type __id "software_update_options";
       tags = Prop.computed __type __id "tags";
       vpc_options = Prop.computed __type __id "vpc_options";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_domain
        (aws_opensearch_domain ?id ?tags ~off_peak_window_options
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(off_peak_window_options = [])
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~off_peak_window_options ~domain_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

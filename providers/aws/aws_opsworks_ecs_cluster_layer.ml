(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_configuration__log_streams = {
  batch_count : float prop option; [@option]
  batch_size : float prop option; [@option]
  buffer_duration : float prop option; [@option]
  datetime_format : string prop option; [@option]
  encoding : string prop option; [@option]
  file : string prop;
  file_fingerprint_lines : string prop option; [@option]
  initial_position : string prop option; [@option]
  log_group_name : string prop;
  multiline_start_pattern : string prop option; [@option]
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_configuration__log_streams) -> ()

let yojson_of_cloudwatch_configuration__log_streams =
  (function
   | {
       batch_count = v_batch_count;
       batch_size = v_batch_size;
       buffer_duration = v_buffer_duration;
       datetime_format = v_datetime_format;
       encoding = v_encoding;
       file = v_file;
       file_fingerprint_lines = v_file_fingerprint_lines;
       initial_position = v_initial_position;
       log_group_name = v_log_group_name;
       multiline_start_pattern = v_multiline_start_pattern;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multiline_start_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "multiline_start_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       let bnds =
         match v_initial_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_fingerprint_lines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_fingerprint_lines", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file in
         ("file", arg) :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datetime_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datetime_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffer_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudwatch_configuration__log_streams ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_configuration__log_streams

[@@@deriving.end]

type cloudwatch_configuration = {
  enabled : bool prop option; [@option]
  log_streams : cloudwatch_configuration__log_streams list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_configuration) -> ()

let yojson_of_cloudwatch_configuration =
  (function
   | { enabled = v_enabled; log_streams = v_log_streams } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cloudwatch_configuration__log_streams
             v_log_streams
         in
         ("log_streams", arg) :: bnds
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
    : cloudwatch_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_configuration

[@@@deriving.end]

type ebs_volume = {
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  mount_point : string prop;
  number_of_disks : float prop;
  raid_level : string prop option; [@option]
  size : float prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_volume) -> ()

let yojson_of_ebs_volume =
  (function
   | {
       encrypted = v_encrypted;
       iops = v_iops;
       mount_point = v_mount_point;
       number_of_disks = v_number_of_disks;
       raid_level = v_raid_level;
       size = v_size;
       type_ = v_type_;
     } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_raid_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "raid_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_disks
         in
         ("number_of_disks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_point in
         ("mount_point", arg) :: bnds
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
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ebs_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_volume

[@@@deriving.end]

type load_based_auto_scaling__downscaling = {
  alarms : string prop list option; [@option]
  cpu_threshold : float prop option; [@option]
  ignore_metrics_time : float prop option; [@option]
  instance_count : float prop option; [@option]
  load_threshold : float prop option; [@option]
  memory_threshold : float prop option; [@option]
  thresholds_wait_time : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_based_auto_scaling__downscaling) -> ()

let yojson_of_load_based_auto_scaling__downscaling =
  (function
   | {
       alarms = v_alarms;
       cpu_threshold = v_cpu_threshold;
       ignore_metrics_time = v_ignore_metrics_time;
       instance_count = v_instance_count;
       load_threshold = v_load_threshold;
       memory_threshold = v_memory_threshold;
       thresholds_wait_time = v_thresholds_wait_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_thresholds_wait_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "thresholds_wait_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "load_threshold", arg in
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
         match v_ignore_metrics_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ignore_metrics_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alarms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alarms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_based_auto_scaling__downscaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_based_auto_scaling__downscaling

[@@@deriving.end]

type load_based_auto_scaling__upscaling = {
  alarms : string prop list option; [@option]
  cpu_threshold : float prop option; [@option]
  ignore_metrics_time : float prop option; [@option]
  instance_count : float prop option; [@option]
  load_threshold : float prop option; [@option]
  memory_threshold : float prop option; [@option]
  thresholds_wait_time : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_based_auto_scaling__upscaling) -> ()

let yojson_of_load_based_auto_scaling__upscaling =
  (function
   | {
       alarms = v_alarms;
       cpu_threshold = v_cpu_threshold;
       ignore_metrics_time = v_ignore_metrics_time;
       instance_count = v_instance_count;
       load_threshold = v_load_threshold;
       memory_threshold = v_memory_threshold;
       thresholds_wait_time = v_thresholds_wait_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_thresholds_wait_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "thresholds_wait_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "load_threshold", arg in
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
         match v_ignore_metrics_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ignore_metrics_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alarms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alarms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_based_auto_scaling__upscaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_based_auto_scaling__upscaling

[@@@deriving.end]

type load_based_auto_scaling = {
  enable : bool prop option; [@option]
  downscaling : load_based_auto_scaling__downscaling list;
  upscaling : load_based_auto_scaling__upscaling list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_based_auto_scaling) -> ()

let yojson_of_load_based_auto_scaling =
  (function
   | {
       enable = v_enable;
       downscaling = v_downscaling;
       upscaling = v_upscaling;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_based_auto_scaling__upscaling v_upscaling
         in
         ("upscaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_based_auto_scaling__downscaling
             v_downscaling
         in
         ("downscaling", arg) :: bnds
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_based_auto_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_based_auto_scaling

[@@@deriving.end]

type aws_opsworks_ecs_cluster_layer = {
  auto_assign_elastic_ips : bool prop option; [@option]
  auto_assign_public_ips : bool prop option; [@option]
  auto_healing : bool prop option; [@option]
  custom_configure_recipes : string prop list option; [@option]
  custom_deploy_recipes : string prop list option; [@option]
  custom_instance_profile_arn : string prop option; [@option]
  custom_json : string prop option; [@option]
  custom_security_group_ids : string prop list option; [@option]
  custom_setup_recipes : string prop list option; [@option]
  custom_shutdown_recipes : string prop list option; [@option]
  custom_undeploy_recipes : string prop list option; [@option]
  drain_elb_on_shutdown : bool prop option; [@option]
  ecs_cluster_arn : string prop;
  elastic_load_balancer : string prop option; [@option]
  id : string prop option; [@option]
  install_updates_on_boot : bool prop option; [@option]
  instance_shutdown_timeout : float prop option; [@option]
  name : string prop option; [@option]
  stack_id : string prop;
  system_packages : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  use_ebs_optimized_instances : bool prop option; [@option]
  cloudwatch_configuration : cloudwatch_configuration list;
  ebs_volume : ebs_volume list;
  load_based_auto_scaling : load_based_auto_scaling list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_ecs_cluster_layer) -> ()

let yojson_of_aws_opsworks_ecs_cluster_layer =
  (function
   | {
       auto_assign_elastic_ips = v_auto_assign_elastic_ips;
       auto_assign_public_ips = v_auto_assign_public_ips;
       auto_healing = v_auto_healing;
       custom_configure_recipes = v_custom_configure_recipes;
       custom_deploy_recipes = v_custom_deploy_recipes;
       custom_instance_profile_arn = v_custom_instance_profile_arn;
       custom_json = v_custom_json;
       custom_security_group_ids = v_custom_security_group_ids;
       custom_setup_recipes = v_custom_setup_recipes;
       custom_shutdown_recipes = v_custom_shutdown_recipes;
       custom_undeploy_recipes = v_custom_undeploy_recipes;
       drain_elb_on_shutdown = v_drain_elb_on_shutdown;
       ecs_cluster_arn = v_ecs_cluster_arn;
       elastic_load_balancer = v_elastic_load_balancer;
       id = v_id;
       install_updates_on_boot = v_install_updates_on_boot;
       instance_shutdown_timeout = v_instance_shutdown_timeout;
       name = v_name;
       stack_id = v_stack_id;
       system_packages = v_system_packages;
       tags = v_tags;
       tags_all = v_tags_all;
       use_ebs_optimized_instances = v_use_ebs_optimized_instances;
       cloudwatch_configuration = v_cloudwatch_configuration;
       ebs_volume = v_ebs_volume;
       load_based_auto_scaling = v_load_based_auto_scaling;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_based_auto_scaling
             v_load_based_auto_scaling
         in
         ("load_based_auto_scaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ebs_volume v_ebs_volume
         in
         ("ebs_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloudwatch_configuration
             v_cloudwatch_configuration
         in
         ("cloudwatch_configuration", arg) :: bnds
       in
       let bnds =
         match v_use_ebs_optimized_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_ebs_optimized_instances", arg in
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
         match v_system_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "system_packages", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_shutdown_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_shutdown_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_install_updates_on_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "install_updates_on_boot", arg in
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
         match v_elastic_load_balancer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_load_balancer", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ecs_cluster_arn
         in
         ("ecs_cluster_arn", arg) :: bnds
       in
       let bnds =
         match v_drain_elb_on_shutdown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "drain_elb_on_shutdown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_undeploy_recipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_undeploy_recipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_shutdown_recipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_shutdown_recipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_setup_recipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_setup_recipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_instance_profile_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_instance_profile_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_deploy_recipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_deploy_recipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_configure_recipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_configure_recipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_healing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_healing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_assign_public_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_assign_public_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_assign_elastic_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_assign_elastic_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_ecs_cluster_layer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_ecs_cluster_layer

[@@@deriving.end]

let cloudwatch_configuration__log_streams ?batch_count ?batch_size
    ?buffer_duration ?datetime_format ?encoding
    ?file_fingerprint_lines ?initial_position
    ?multiline_start_pattern ?time_zone ~file ~log_group_name () :
    cloudwatch_configuration__log_streams =
  {
    batch_count;
    batch_size;
    buffer_duration;
    datetime_format;
    encoding;
    file;
    file_fingerprint_lines;
    initial_position;
    log_group_name;
    multiline_start_pattern;
    time_zone;
  }

let cloudwatch_configuration ?enabled ?(log_streams = []) () :
    cloudwatch_configuration =
  { enabled; log_streams }

let ebs_volume ?encrypted ?iops ?raid_level ?type_ ~mount_point
    ~number_of_disks ~size () : ebs_volume =
  {
    encrypted;
    iops;
    mount_point;
    number_of_disks;
    raid_level;
    size;
    type_;
  }

let load_based_auto_scaling__downscaling ?alarms ?cpu_threshold
    ?ignore_metrics_time ?instance_count ?load_threshold
    ?memory_threshold ?thresholds_wait_time () :
    load_based_auto_scaling__downscaling =
  {
    alarms;
    cpu_threshold;
    ignore_metrics_time;
    instance_count;
    load_threshold;
    memory_threshold;
    thresholds_wait_time;
  }

let load_based_auto_scaling__upscaling ?alarms ?cpu_threshold
    ?ignore_metrics_time ?instance_count ?load_threshold
    ?memory_threshold ?thresholds_wait_time () :
    load_based_auto_scaling__upscaling =
  {
    alarms;
    cpu_threshold;
    ignore_metrics_time;
    instance_count;
    load_threshold;
    memory_threshold;
    thresholds_wait_time;
  }

let load_based_auto_scaling ?enable ?(downscaling = [])
    ?(upscaling = []) () : load_based_auto_scaling =
  { enable; downscaling; upscaling }

let aws_opsworks_ecs_cluster_layer ?auto_assign_elastic_ips
    ?auto_assign_public_ips ?auto_healing ?custom_configure_recipes
    ?custom_deploy_recipes ?custom_instance_profile_arn ?custom_json
    ?custom_security_group_ids ?custom_setup_recipes
    ?custom_shutdown_recipes ?custom_undeploy_recipes
    ?drain_elb_on_shutdown ?elastic_load_balancer ?id
    ?install_updates_on_boot ?instance_shutdown_timeout ?name
    ?system_packages ?tags ?tags_all ?use_ebs_optimized_instances
    ?(cloudwatch_configuration = []) ?(load_based_auto_scaling = [])
    ~ecs_cluster_arn ~stack_id ~ebs_volume () :
    aws_opsworks_ecs_cluster_layer =
  {
    auto_assign_elastic_ips;
    auto_assign_public_ips;
    auto_healing;
    custom_configure_recipes;
    custom_deploy_recipes;
    custom_instance_profile_arn;
    custom_json;
    custom_security_group_ids;
    custom_setup_recipes;
    custom_shutdown_recipes;
    custom_undeploy_recipes;
    drain_elb_on_shutdown;
    ecs_cluster_arn;
    elastic_load_balancer;
    id;
    install_updates_on_boot;
    instance_shutdown_timeout;
    name;
    stack_id;
    system_packages;
    tags;
    tags_all;
    use_ebs_optimized_instances;
    cloudwatch_configuration;
    ebs_volume;
    load_based_auto_scaling;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_assign_elastic_ips : bool prop;
  auto_assign_public_ips : bool prop;
  auto_healing : bool prop;
  custom_configure_recipes : string list prop;
  custom_deploy_recipes : string list prop;
  custom_instance_profile_arn : string prop;
  custom_json : string prop;
  custom_security_group_ids : string list prop;
  custom_setup_recipes : string list prop;
  custom_shutdown_recipes : string list prop;
  custom_undeploy_recipes : string list prop;
  drain_elb_on_shutdown : bool prop;
  ecs_cluster_arn : string prop;
  elastic_load_balancer : string prop;
  id : string prop;
  install_updates_on_boot : bool prop;
  instance_shutdown_timeout : float prop;
  name : string prop;
  stack_id : string prop;
  system_packages : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  use_ebs_optimized_instances : bool prop;
}

let make ?auto_assign_elastic_ips ?auto_assign_public_ips
    ?auto_healing ?custom_configure_recipes ?custom_deploy_recipes
    ?custom_instance_profile_arn ?custom_json
    ?custom_security_group_ids ?custom_setup_recipes
    ?custom_shutdown_recipes ?custom_undeploy_recipes
    ?drain_elb_on_shutdown ?elastic_load_balancer ?id
    ?install_updates_on_boot ?instance_shutdown_timeout ?name
    ?system_packages ?tags ?tags_all ?use_ebs_optimized_instances
    ?(cloudwatch_configuration = []) ?(load_based_auto_scaling = [])
    ~ecs_cluster_arn ~stack_id ~ebs_volume __id =
  let __type = "aws_opsworks_ecs_cluster_layer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_assign_elastic_ips =
         Prop.computed __type __id "auto_assign_elastic_ips";
       auto_assign_public_ips =
         Prop.computed __type __id "auto_assign_public_ips";
       auto_healing = Prop.computed __type __id "auto_healing";
       custom_configure_recipes =
         Prop.computed __type __id "custom_configure_recipes";
       custom_deploy_recipes =
         Prop.computed __type __id "custom_deploy_recipes";
       custom_instance_profile_arn =
         Prop.computed __type __id "custom_instance_profile_arn";
       custom_json = Prop.computed __type __id "custom_json";
       custom_security_group_ids =
         Prop.computed __type __id "custom_security_group_ids";
       custom_setup_recipes =
         Prop.computed __type __id "custom_setup_recipes";
       custom_shutdown_recipes =
         Prop.computed __type __id "custom_shutdown_recipes";
       custom_undeploy_recipes =
         Prop.computed __type __id "custom_undeploy_recipes";
       drain_elb_on_shutdown =
         Prop.computed __type __id "drain_elb_on_shutdown";
       ecs_cluster_arn = Prop.computed __type __id "ecs_cluster_arn";
       elastic_load_balancer =
         Prop.computed __type __id "elastic_load_balancer";
       id = Prop.computed __type __id "id";
       install_updates_on_boot =
         Prop.computed __type __id "install_updates_on_boot";
       instance_shutdown_timeout =
         Prop.computed __type __id "instance_shutdown_timeout";
       name = Prop.computed __type __id "name";
       stack_id = Prop.computed __type __id "stack_id";
       system_packages = Prop.computed __type __id "system_packages";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       use_ebs_optimized_instances =
         Prop.computed __type __id "use_ebs_optimized_instances";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_ecs_cluster_layer
        (aws_opsworks_ecs_cluster_layer ?auto_assign_elastic_ips
           ?auto_assign_public_ips ?auto_healing
           ?custom_configure_recipes ?custom_deploy_recipes
           ?custom_instance_profile_arn ?custom_json
           ?custom_security_group_ids ?custom_setup_recipes
           ?custom_shutdown_recipes ?custom_undeploy_recipes
           ?drain_elb_on_shutdown ?elastic_load_balancer ?id
           ?install_updates_on_boot ?instance_shutdown_timeout ?name
           ?system_packages ?tags ?tags_all
           ?use_ebs_optimized_instances ~cloudwatch_configuration
           ~load_based_auto_scaling ~ecs_cluster_arn ~stack_id
           ~ebs_volume ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_assign_elastic_ips
    ?auto_assign_public_ips ?auto_healing ?custom_configure_recipes
    ?custom_deploy_recipes ?custom_instance_profile_arn ?custom_json
    ?custom_security_group_ids ?custom_setup_recipes
    ?custom_shutdown_recipes ?custom_undeploy_recipes
    ?drain_elb_on_shutdown ?elastic_load_balancer ?id
    ?install_updates_on_boot ?instance_shutdown_timeout ?name
    ?system_packages ?tags ?tags_all ?use_ebs_optimized_instances
    ?(cloudwatch_configuration = []) ?(load_based_auto_scaling = [])
    ~ecs_cluster_arn ~stack_id ~ebs_volume __id =
  let (r : _ Tf_core.resource) =
    make ?auto_assign_elastic_ips ?auto_assign_public_ips
      ?auto_healing ?custom_configure_recipes ?custom_deploy_recipes
      ?custom_instance_profile_arn ?custom_json
      ?custom_security_group_ids ?custom_setup_recipes
      ?custom_shutdown_recipes ?custom_undeploy_recipes
      ?drain_elb_on_shutdown ?elastic_load_balancer ?id
      ?install_updates_on_boot ?instance_shutdown_timeout ?name
      ?system_packages ?tags ?tags_all ?use_ebs_optimized_instances
      ~cloudwatch_configuration ~load_based_auto_scaling
      ~ecs_cluster_arn ~stack_id ~ebs_volume __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

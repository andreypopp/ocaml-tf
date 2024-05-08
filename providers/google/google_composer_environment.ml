(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__data_retention_config__task_logs_retention_config = {
  storage_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__data_retention_config__task_logs_retention_config) ->
  ()

let yojson_of_config__data_retention_config__task_logs_retention_config
    =
  (function
   | { storage_mode = v_storage_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__data_retention_config__task_logs_retention_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config__data_retention_config__task_logs_retention_config

[@@@deriving.end]

type config__data_retention_config = {
  task_logs_retention_config :
    config__data_retention_config__task_logs_retention_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__data_retention_config) -> ()

let yojson_of_config__data_retention_config =
  (function
   | { task_logs_retention_config = v_task_logs_retention_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_task_logs_retention_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__data_retention_config__task_logs_retention_config)
               v_task_logs_retention_config
           in
           let bnd = "task_logs_retention_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__data_retention_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__data_retention_config

[@@@deriving.end]

type config__database_config = {
  machine_type : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__database_config) -> ()

let yojson_of_config__database_config =
  (function
   | { machine_type = v_machine_type; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__database_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__database_config

[@@@deriving.end]

type config__encryption_config = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__encryption_config) -> ()

let yojson_of_config__encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : config__encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__encryption_config

[@@@deriving.end]

type config__maintenance_window = {
  end_time : string prop;
  recurrence : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__maintenance_window) -> ()

let yojson_of_config__maintenance_window =
  (function
   | {
       end_time = v_end_time;
       recurrence = v_recurrence;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_recurrence in
         ("recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : config__maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__maintenance_window

[@@@deriving.end]

type config__master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
  display_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__master_authorized_networks_config__cidr_blocks) ->
  ()

let yojson_of_config__master_authorized_networks_config__cidr_blocks
    =
  (function
   | { cidr_block = v_cidr_block; display_name = v_display_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : config__master_authorized_networks_config__cidr_blocks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config__master_authorized_networks_config__cidr_blocks

[@@@deriving.end]

type config__master_authorized_networks_config = {
  enabled : bool prop;
  cidr_blocks :
    config__master_authorized_networks_config__cidr_blocks list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__master_authorized_networks_config) -> ()

let yojson_of_config__master_authorized_networks_config =
  (function
   | { enabled = v_enabled; cidr_blocks = v_cidr_blocks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__master_authorized_networks_config__cidr_blocks)
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : config__master_authorized_networks_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__master_authorized_networks_config

[@@@deriving.end]

type config__node_config__ip_allocation_policy = {
  cluster_ipv4_cidr_block : string prop;
  cluster_secondary_range_name : string prop;
  services_ipv4_cidr_block : string prop;
  services_secondary_range_name : string prop;
  use_ip_aliases : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__node_config__ip_allocation_policy) -> ()

let yojson_of_config__node_config__ip_allocation_policy =
  (function
   | {
       cluster_ipv4_cidr_block = v_cluster_ipv4_cidr_block;
       cluster_secondary_range_name = v_cluster_secondary_range_name;
       services_ipv4_cidr_block = v_services_ipv4_cidr_block;
       services_secondary_range_name =
         v_services_secondary_range_name;
       use_ip_aliases = v_use_ip_aliases;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_ip_aliases in
         ("use_ip_aliases", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_services_secondary_range_name
         in
         ("services_secondary_range_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_services_ipv4_cidr_block
         in
         ("services_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_secondary_range_name
         in
         ("cluster_secondary_range_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ipv4_cidr_block
         in
         ("cluster_ipv4_cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : config__node_config__ip_allocation_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__node_config__ip_allocation_policy

[@@@deriving.end]

type config__node_config = {
  disk_size_gb : float prop option; [@option]
  enable_ip_masq_agent : bool prop option; [@option]
  ip_allocation_policy :
    config__node_config__ip_allocation_policy list option;
      [@option]
  machine_type : string prop option; [@option]
  network : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
  service_account : string prop option; [@option]
  subnetwork : string prop option; [@option]
  tags : string prop list option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__node_config) -> ()

let yojson_of_config__node_config =
  (function
   | {
       disk_size_gb = v_disk_size_gb;
       enable_ip_masq_agent = v_enable_ip_masq_agent;
       ip_allocation_policy = v_ip_allocation_policy;
       machine_type = v_machine_type;
       network = v_network;
       oauth_scopes = v_oauth_scopes;
       service_account = v_service_account;
       subnetwork = v_subnetwork;
       tags = v_tags;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_allocation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_config__node_config__ip_allocation_policy
                 v
             in
             let bnd = "ip_allocation_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ip_masq_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ip_masq_agent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__node_config

[@@@deriving.end]

type config__private_environment_config = {
  cloud_composer_connection_subnetwork : string prop option;
      [@option]
  cloud_composer_network_ipv4_cidr_block : string prop option;
      [@option]
  cloud_sql_ipv4_cidr_block : string prop option; [@option]
  connection_type : string prop option; [@option]
  enable_private_endpoint : bool prop option; [@option]
  enable_privately_used_public_ips : bool prop option; [@option]
  master_ipv4_cidr_block : string prop option; [@option]
  web_server_ipv4_cidr_block : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__private_environment_config) -> ()

let yojson_of_config__private_environment_config =
  (function
   | {
       cloud_composer_connection_subnetwork =
         v_cloud_composer_connection_subnetwork;
       cloud_composer_network_ipv4_cidr_block =
         v_cloud_composer_network_ipv4_cidr_block;
       cloud_sql_ipv4_cidr_block = v_cloud_sql_ipv4_cidr_block;
       connection_type = v_connection_type;
       enable_private_endpoint = v_enable_private_endpoint;
       enable_privately_used_public_ips =
         v_enable_privately_used_public_ips;
       master_ipv4_cidr_block = v_master_ipv4_cidr_block;
       web_server_ipv4_cidr_block = v_web_server_ipv4_cidr_block;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_server_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_server_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_privately_used_public_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_privately_used_public_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_private_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_sql_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_sql_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_composer_network_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cloud_composer_network_ipv4_cidr_block", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_composer_connection_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_composer_connection_subnetwork", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__private_environment_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__private_environment_config

[@@@deriving.end]

type config__recovery_config__scheduled_snapshots_config = {
  enabled : bool prop;
  snapshot_creation_schedule : string prop option; [@option]
  snapshot_location : string prop option; [@option]
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__recovery_config__scheduled_snapshots_config) -> ()

let yojson_of_config__recovery_config__scheduled_snapshots_config =
  (function
   | {
       enabled = v_enabled;
       snapshot_creation_schedule = v_snapshot_creation_schedule;
       snapshot_location = v_snapshot_location;
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
         match v_snapshot_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_creation_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_creation_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : config__recovery_config__scheduled_snapshots_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__recovery_config__scheduled_snapshots_config

[@@@deriving.end]

type config__recovery_config = {
  scheduled_snapshots_config :
    config__recovery_config__scheduled_snapshots_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__recovery_config) -> ()

let yojson_of_config__recovery_config =
  (function
   | { scheduled_snapshots_config = v_scheduled_snapshots_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scheduled_snapshots_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__recovery_config__scheduled_snapshots_config)
               v_scheduled_snapshots_config
           in
           let bnd = "scheduled_snapshots_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__recovery_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__recovery_config

[@@@deriving.end]

type config__software_config = {
  airflow_config_overrides : (string * string prop) list option;
      [@option]
  env_variables : (string * string prop) list option; [@option]
  image_version : string prop option; [@option]
  pypi_packages : (string * string prop) list option; [@option]
  python_version : string prop option; [@option]
  scheduler_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__software_config) -> ()

let yojson_of_config__software_config =
  (function
   | {
       airflow_config_overrides = v_airflow_config_overrides;
       env_variables = v_env_variables;
       image_version = v_image_version;
       pypi_packages = v_pypi_packages;
       python_version = v_python_version;
       scheduler_count = v_scheduler_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scheduler_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scheduler_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_python_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "python_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pypi_packages with
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
             let bnd = "pypi_packages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_env_variables with
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
             let bnd = "env_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_airflow_config_overrides with
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
             let bnd = "airflow_config_overrides", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__software_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__software_config

[@@@deriving.end]

type config__web_server_config = { machine_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__web_server_config) -> ()

let yojson_of_config__web_server_config =
  (function
   | { machine_type = v_machine_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       `Assoc bnds
    : config__web_server_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__web_server_config

[@@@deriving.end]

type config__web_server_network_access_control__allowed_ip_range = {
  description : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       config__web_server_network_access_control__allowed_ip_range) ->
  ()

let yojson_of_config__web_server_network_access_control__allowed_ip_range
    =
  (function
   | { description = v_description; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__web_server_network_access_control__allowed_ip_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config__web_server_network_access_control__allowed_ip_range

[@@@deriving.end]

type config__web_server_network_access_control = {
  allowed_ip_range :
    config__web_server_network_access_control__allowed_ip_range list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__web_server_network_access_control) -> ()

let yojson_of_config__web_server_network_access_control =
  (function
   | { allowed_ip_range = v_allowed_ip_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_ip_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__web_server_network_access_control__allowed_ip_range)
               v_allowed_ip_range
           in
           let bnd = "allowed_ip_range", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__web_server_network_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__web_server_network_access_control

[@@@deriving.end]

type config__workloads_config__scheduler = {
  count : float prop option; [@option]
  cpu : float prop option; [@option]
  memory_gb : float prop option; [@option]
  storage_gb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__workloads_config__scheduler) -> ()

let yojson_of_config__workloads_config__scheduler =
  (function
   | {
       count = v_count;
       cpu = v_cpu;
       memory_gb = v_memory_gb;
       storage_gb = v_storage_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_gb", arg in
             bnd :: bnds
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
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__workloads_config__scheduler ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__scheduler

[@@@deriving.end]

type config__workloads_config__triggerer = {
  count : float prop;
  cpu : float prop;
  memory_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__workloads_config__triggerer) -> ()

let yojson_of_config__workloads_config__triggerer =
  (function
   | { count = v_count; cpu = v_cpu; memory_gb = v_memory_gb } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_gb in
         ("memory_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : config__workloads_config__triggerer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__triggerer

[@@@deriving.end]

type config__workloads_config__web_server = {
  cpu : float prop option; [@option]
  memory_gb : float prop option; [@option]
  storage_gb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__workloads_config__web_server) -> ()

let yojson_of_config__workloads_config__web_server =
  (function
   | {
       cpu = v_cpu;
       memory_gb = v_memory_gb;
       storage_gb = v_storage_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__workloads_config__web_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__web_server

[@@@deriving.end]

type config__workloads_config__worker = {
  cpu : float prop option; [@option]
  max_count : float prop option; [@option]
  memory_gb : float prop option; [@option]
  min_count : float prop option; [@option]
  storage_gb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__workloads_config__worker) -> ()

let yojson_of_config__workloads_config__worker =
  (function
   | {
       cpu = v_cpu;
       max_count = v_max_count;
       memory_gb = v_memory_gb;
       min_count = v_min_count;
       storage_gb = v_storage_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__workloads_config__worker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__worker

[@@@deriving.end]

type config__workloads_config = {
  scheduler : config__workloads_config__scheduler list;
      [@default []] [@yojson_drop_default ( = )]
  triggerer : config__workloads_config__triggerer list;
      [@default []] [@yojson_drop_default ( = )]
  web_server : config__workloads_config__web_server list;
      [@default []] [@yojson_drop_default ( = )]
  worker : config__workloads_config__worker list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__workloads_config) -> ()

let yojson_of_config__workloads_config =
  (function
   | {
       scheduler = v_scheduler;
       triggerer = v_triggerer;
       web_server = v_web_server;
       worker = v_worker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_worker then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__workloads_config__worker)
               v_worker
           in
           let bnd = "worker", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_web_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__workloads_config__web_server)
               v_web_server
           in
           let bnd = "web_server", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_triggerer then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__workloads_config__triggerer)
               v_triggerer
           in
           let bnd = "triggerer", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_scheduler then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__workloads_config__scheduler)
               v_scheduler
           in
           let bnd = "scheduler", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__workloads_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config

[@@@deriving.end]

type config = {
  environment_size : string prop option; [@option]
  node_count : float prop option; [@option]
  resilience_mode : string prop option; [@option]
  data_retention_config : config__data_retention_config list;
      [@default []] [@yojson_drop_default ( = )]
  database_config : config__database_config list;
      [@default []] [@yojson_drop_default ( = )]
  encryption_config : config__encryption_config list;
      [@default []] [@yojson_drop_default ( = )]
  maintenance_window : config__maintenance_window list;
      [@default []] [@yojson_drop_default ( = )]
  master_authorized_networks_config :
    config__master_authorized_networks_config list;
      [@default []] [@yojson_drop_default ( = )]
  node_config : config__node_config list;
      [@default []] [@yojson_drop_default ( = )]
  private_environment_config :
    config__private_environment_config list;
      [@default []] [@yojson_drop_default ( = )]
  recovery_config : config__recovery_config list;
      [@default []] [@yojson_drop_default ( = )]
  software_config : config__software_config list;
      [@default []] [@yojson_drop_default ( = )]
  web_server_config : config__web_server_config list;
      [@default []] [@yojson_drop_default ( = )]
  web_server_network_access_control :
    config__web_server_network_access_control list;
      [@default []] [@yojson_drop_default ( = )]
  workloads_config : config__workloads_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       environment_size = v_environment_size;
       node_count = v_node_count;
       resilience_mode = v_resilience_mode;
       data_retention_config = v_data_retention_config;
       database_config = v_database_config;
       encryption_config = v_encryption_config;
       maintenance_window = v_maintenance_window;
       master_authorized_networks_config =
         v_master_authorized_networks_config;
       node_config = v_node_config;
       private_environment_config = v_private_environment_config;
       recovery_config = v_recovery_config;
       software_config = v_software_config;
       web_server_config = v_web_server_config;
       web_server_network_access_control =
         v_web_server_network_access_control;
       workloads_config = v_workloads_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_workloads_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__workloads_config)
               v_workloads_config
           in
           let bnd = "workloads_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_web_server_network_access_control then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__web_server_network_access_control)
               v_web_server_network_access_control
           in
           let bnd = "web_server_network_access_control", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_web_server_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__web_server_config)
               v_web_server_config
           in
           let bnd = "web_server_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_software_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__software_config)
               v_software_config
           in
           let bnd = "software_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_recovery_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__recovery_config)
               v_recovery_config
           in
           let bnd = "recovery_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_private_environment_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__private_environment_config)
               v_private_environment_config
           in
           let bnd = "private_environment_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__node_config)
               v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_master_authorized_networks_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__master_authorized_networks_config)
               v_master_authorized_networks_config
           in
           let bnd = "master_authorized_networks_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_database_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__database_config)
               v_database_config
           in
           let bnd = "database_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_data_retention_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__data_retention_config)
               v_data_retention_config
           in
           let bnd = "data_retention_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resilience_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resilience_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type storage_config = { bucket : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_config) -> ()

let yojson_of_storage_config =
  (function
   | { bucket = v_bucket } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : storage_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_config

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

type google_composer_environment = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  config : config list; [@default []] [@yojson_drop_default ( = )]
  storage_config : storage_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_composer_environment) -> ()

let yojson_of_google_composer_environment =
  (function
   | {
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       config = v_config;
       storage_config = v_storage_config;
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
         if [] = v_storage_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_config)
               v_storage_config
           in
           let bnd = "storage_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
       `Assoc bnds
    : google_composer_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_composer_environment

[@@@deriving.end]

let config__data_retention_config__task_logs_retention_config
    ?storage_mode () :
    config__data_retention_config__task_logs_retention_config =
  { storage_mode }

let config__data_retention_config ~task_logs_retention_config () :
    config__data_retention_config =
  { task_logs_retention_config }

let config__database_config ?machine_type ?zone () :
    config__database_config =
  { machine_type; zone }

let config__encryption_config ~kms_key_name () :
    config__encryption_config =
  { kms_key_name }

let config__maintenance_window ~end_time ~recurrence ~start_time () :
    config__maintenance_window =
  { end_time; recurrence; start_time }

let config__master_authorized_networks_config__cidr_blocks
    ?display_name ~cidr_block () :
    config__master_authorized_networks_config__cidr_blocks =
  { cidr_block; display_name }

let config__master_authorized_networks_config ~enabled ~cidr_blocks
    () : config__master_authorized_networks_config =
  { enabled; cidr_blocks }

let config__node_config ?disk_size_gb ?enable_ip_masq_agent
    ?ip_allocation_policy ?machine_type ?network ?oauth_scopes
    ?service_account ?subnetwork ?tags ?zone () : config__node_config
    =
  {
    disk_size_gb;
    enable_ip_masq_agent;
    ip_allocation_policy;
    machine_type;
    network;
    oauth_scopes;
    service_account;
    subnetwork;
    tags;
    zone;
  }

let config__private_environment_config
    ?cloud_composer_connection_subnetwork
    ?cloud_composer_network_ipv4_cidr_block
    ?cloud_sql_ipv4_cidr_block ?connection_type
    ?enable_private_endpoint ?enable_privately_used_public_ips
    ?master_ipv4_cidr_block ?web_server_ipv4_cidr_block () :
    config__private_environment_config =
  {
    cloud_composer_connection_subnetwork;
    cloud_composer_network_ipv4_cidr_block;
    cloud_sql_ipv4_cidr_block;
    connection_type;
    enable_private_endpoint;
    enable_privately_used_public_ips;
    master_ipv4_cidr_block;
    web_server_ipv4_cidr_block;
  }

let config__recovery_config__scheduled_snapshots_config
    ?snapshot_creation_schedule ?snapshot_location ?time_zone
    ~enabled () : config__recovery_config__scheduled_snapshots_config
    =
  {
    enabled;
    snapshot_creation_schedule;
    snapshot_location;
    time_zone;
  }

let config__recovery_config ?(scheduled_snapshots_config = []) () :
    config__recovery_config =
  { scheduled_snapshots_config }

let config__software_config ?airflow_config_overrides ?env_variables
    ?image_version ?pypi_packages ?python_version ?scheduler_count ()
    : config__software_config =
  {
    airflow_config_overrides;
    env_variables;
    image_version;
    pypi_packages;
    python_version;
    scheduler_count;
  }

let config__web_server_config ~machine_type () :
    config__web_server_config =
  { machine_type }

let config__web_server_network_access_control__allowed_ip_range
    ?description ~value () :
    config__web_server_network_access_control__allowed_ip_range =
  { description; value }

let config__web_server_network_access_control ~allowed_ip_range () :
    config__web_server_network_access_control =
  { allowed_ip_range }

let config__workloads_config__scheduler ?count ?cpu ?memory_gb
    ?storage_gb () : config__workloads_config__scheduler =
  { count; cpu; memory_gb; storage_gb }

let config__workloads_config__triggerer ~count ~cpu ~memory_gb () :
    config__workloads_config__triggerer =
  { count; cpu; memory_gb }

let config__workloads_config__web_server ?cpu ?memory_gb ?storage_gb
    () : config__workloads_config__web_server =
  { cpu; memory_gb; storage_gb }

let config__workloads_config__worker ?cpu ?max_count ?memory_gb
    ?min_count ?storage_gb () : config__workloads_config__worker =
  { cpu; max_count; memory_gb; min_count; storage_gb }

let config__workloads_config ?(scheduler = []) ?(triggerer = [])
    ?(web_server = []) ?(worker = []) () : config__workloads_config =
  { scheduler; triggerer; web_server; worker }

let config ?environment_size ?node_count ?resilience_mode
    ?(data_retention_config = []) ?(database_config = [])
    ?(encryption_config = []) ?(maintenance_window = [])
    ?(master_authorized_networks_config = []) ?(node_config = [])
    ?(private_environment_config = []) ?(recovery_config = [])
    ?(software_config = []) ?(web_server_config = [])
    ?(web_server_network_access_control = [])
    ?(workloads_config = []) () : config =
  {
    environment_size;
    node_count;
    resilience_mode;
    data_retention_config;
    database_config;
    encryption_config;
    maintenance_window;
    master_authorized_networks_config;
    node_config;
    private_environment_config;
    recovery_config;
    software_config;
    web_server_config;
    web_server_network_access_control;
    workloads_config;
  }

let storage_config ~bucket () : storage_config = { bucket }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_composer_environment ?id ?labels ?project ?region
    ?(config = []) ?(storage_config = []) ?timeouts ~name () :
    google_composer_environment =
  {
    id;
    labels;
    name;
    project;
    region;
    config;
    storage_config;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?project ?region ?(config = [])
    ?(storage_config = []) ?timeouts ~name __id =
  let __type = "google_composer_environment" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_composer_environment
        (google_composer_environment ?id ?labels ?project ?region
           ~config ~storage_config ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?region ?(config = [])
    ?(storage_config = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?region ~config ~storage_config
      ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

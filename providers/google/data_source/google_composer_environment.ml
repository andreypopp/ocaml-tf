(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__workloads_config__worker = {
  cpu : float prop;
  max_count : float prop;
  memory_gb : float prop;
  min_count : float prop;
  storage_gb : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_storage_gb in
         ("storage_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_count in
         ("min_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_gb in
         ("memory_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_count in
         ("max_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       `Assoc bnds
    : config__workloads_config__worker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__worker

[@@@deriving.end]

type config__workloads_config__web_server = {
  cpu : float prop;
  memory_gb : float prop;
  storage_gb : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_storage_gb in
         ("storage_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_gb in
         ("memory_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu in
         ("cpu", arg) :: bnds
       in
       `Assoc bnds
    : config__workloads_config__web_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__web_server

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

type config__workloads_config__scheduler = {
  count : float prop;
  cpu : float prop;
  memory_gb : float prop;
  storage_gb : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_storage_gb in
         ("storage_gb", arg) :: bnds
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
    : config__workloads_config__scheduler ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__workloads_config__scheduler

[@@@deriving.end]

type config__workloads_config = {
  scheduler : config__workloads_config__scheduler list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  triggerer : config__workloads_config__triggerer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_server : config__workloads_config__web_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  worker : config__workloads_config__worker list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_worker then bnds
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
         if Stdlib.( = ) [] v_web_server then bnds
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
         if Stdlib.( = ) [] v_triggerer then bnds
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
         if Stdlib.( = ) [] v_scheduler then bnds
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

type config__web_server_network_access_control__allowed_ip_range = {
  description : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_allowed_ip_range then bnds
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

type config__software_config = {
  airflow_config_overrides : string prop Tf_core.assoc;
  env_variables : string prop Tf_core.assoc;
  image_version : string prop;
  pypi_packages : string prop Tf_core.assoc;
  python_version : string prop;
  scheduler_count : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_scheduler_count
         in
         ("scheduler_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_python_version
         in
         ("python_version", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_pypi_packages
         in
         ("pypi_packages", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_version in
         ("image_version", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_env_variables
         in
         ("env_variables", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_airflow_config_overrides
         in
         ("airflow_config_overrides", arg) :: bnds
       in
       `Assoc bnds
    : config__software_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__software_config

[@@@deriving.end]

type config__recovery_config__scheduled_snapshots_config = {
  enabled : bool prop;
  snapshot_creation_schedule : string prop;
  snapshot_location : string prop;
  time_zone : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_location
         in
         ("snapshot_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_snapshot_creation_schedule
         in
         ("snapshot_creation_schedule", arg) :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_scheduled_snapshots_config then bnds
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

type config__private_environment_config = {
  cloud_composer_connection_subnetwork : string prop;
  cloud_composer_network_ipv4_cidr_block : string prop;
  cloud_sql_ipv4_cidr_block : string prop;
  connection_type : string prop;
  enable_private_endpoint : bool prop;
  enable_privately_used_public_ips : bool prop;
  master_ipv4_cidr_block : string prop;
  web_server_ipv4_cidr_block : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_web_server_ipv4_cidr_block
         in
         ("web_server_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_ipv4_cidr_block
         in
         ("master_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_privately_used_public_ips
         in
         ("enable_privately_used_public_ips", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_private_endpoint
         in
         ("enable_private_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_type
         in
         ("connection_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cloud_sql_ipv4_cidr_block
         in
         ("cloud_sql_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cloud_composer_network_ipv4_cidr_block
         in
         ("cloud_composer_network_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cloud_composer_connection_subnetwork
         in
         ("cloud_composer_connection_subnetwork", arg) :: bnds
       in
       `Assoc bnds
    : config__private_environment_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__private_environment_config

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
  disk_size_gb : float prop;
  enable_ip_masq_agent : bool prop;
  ip_allocation_policy :
    config__node_config__ip_allocation_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  machine_type : string prop;
  network : string prop;
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account : string prop;
  subnetwork : string prop;
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zone : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oauth_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_oauth_scopes
           in
           let bnd = "oauth_scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_allocation_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__node_config__ip_allocation_policy)
               v_ip_allocation_policy
           in
           let bnd = "ip_allocation_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_ip_masq_agent
         in
         ("enable_ip_masq_agent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       `Assoc bnds
    : config__node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__node_config

[@@@deriving.end]

type config__master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
  display_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
  cidr_blocks :
    config__master_authorized_networks_config__cidr_blocks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__master_authorized_networks_config) -> ()

let yojson_of_config__master_authorized_networks_config =
  (function
   | { cidr_blocks = v_cidr_blocks; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__master_authorized_networks_config__cidr_blocks)
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__master_authorized_networks_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__master_authorized_networks_config

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

type config__database_config = {
  machine_type : string prop;
  zone : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       `Assoc bnds
    : config__database_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__database_config

[@@@deriving.end]

type config__data_retention_config__task_logs_retention_config = {
  storage_mode : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_storage_mode in
         ("storage_mode", arg) :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_task_logs_retention_config then bnds
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

type config = {
  airflow_uri : string prop;
  dag_gcs_prefix : string prop;
  data_retention_config : config__data_retention_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_config : config__database_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_config : config__encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_size : string prop;
  gke_cluster : string prop;
  maintenance_window : config__maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_authorized_networks_config :
    config__master_authorized_networks_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : config__node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_count : float prop;
  private_environment_config :
    config__private_environment_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recovery_config : config__recovery_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resilience_mode : string prop;
  software_config : config__software_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_server_config : config__web_server_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_server_network_access_control :
    config__web_server_network_access_control list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workloads_config : config__workloads_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       airflow_uri = v_airflow_uri;
       dag_gcs_prefix = v_dag_gcs_prefix;
       data_retention_config = v_data_retention_config;
       database_config = v_database_config;
       encryption_config = v_encryption_config;
       environment_size = v_environment_size;
       gke_cluster = v_gke_cluster;
       maintenance_window = v_maintenance_window;
       master_authorized_networks_config =
         v_master_authorized_networks_config;
       node_config = v_node_config;
       node_count = v_node_count;
       private_environment_config = v_private_environment_config;
       recovery_config = v_recovery_config;
       resilience_mode = v_resilience_mode;
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
         if Stdlib.( = ) [] v_workloads_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__workloads_config)
               v_workloads_config
           in
           let bnd = "workloads_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_web_server_network_access_control then
           bnds
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
         if Stdlib.( = ) [] v_web_server_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__web_server_config)
               v_web_server_config
           in
           let bnd = "web_server_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_software_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__software_config)
               v_software_config
           in
           let bnd = "software_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resilience_mode
         in
         ("resilience_mode", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recovery_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__recovery_config)
               v_recovery_config
           in
           let bnd = "recovery_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_environment_config then bnds
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
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__node_config)
               v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_master_authorized_networks_config then
           bnds
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
         if Stdlib.( = ) [] v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gke_cluster in
         ("gke_cluster", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_size
         in
         ("environment_size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__database_config)
               v_database_config
           in
           let bnd = "database_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_retention_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__data_retention_config)
               v_data_retention_config
           in
           let bnd = "data_retention_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dag_gcs_prefix
         in
         ("dag_gcs_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_airflow_uri in
         ("airflow_uri", arg) :: bnds
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

type google_composer_environment = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_composer_environment) -> ()

let yojson_of_google_composer_environment =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

let google_composer_environment ?id ?project ?region ~name () :
    google_composer_environment =
  { id; name; project; region }

type t = {
  tf_name : string;
  config : config list prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  storage_config : storage_config list prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_composer_environment" in
  let __attrs =
    ({
       tf_name = __id;
       config = Prop.computed __type __id "config";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       storage_config = Prop.computed __type __id "storage_config";
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
        (google_composer_environment ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

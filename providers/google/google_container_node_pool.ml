(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling = {
  location_policy : string prop option; [@option]
  max_node_count : float prop option; [@option]
  min_node_count : float prop option; [@option]
  total_max_node_count : float prop option; [@option]
  total_min_node_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling) -> ()

let yojson_of_autoscaling =
  (function
   | {
       location_policy = v_location_policy;
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
       total_max_node_count = v_total_max_node_count;
       total_min_node_count = v_total_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_total_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_total_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_max_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling

[@@@deriving.end]

type management = {
  auto_repair : bool prop option; [@option]
  auto_upgrade : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management) -> ()

let yojson_of_management =
  (function
   | { auto_repair = v_auto_repair; auto_upgrade = v_auto_upgrade }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_auto_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_repair", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management

[@@@deriving.end]

type network_config__network_performance_config = {
  total_egress_bandwidth_tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__network_performance_config) -> ()

let yojson_of_network_config__network_performance_config =
  (function
   | { total_egress_bandwidth_tier = v_total_egress_bandwidth_tier }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_total_egress_bandwidth_tier
         in
         ("total_egress_bandwidth_tier", arg) :: bnds
       in
       `Assoc bnds
    : network_config__network_performance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__network_performance_config

[@@@deriving.end]

type network_config__pod_cidr_overprovision_config = {
  disabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__pod_cidr_overprovision_config) -> ()

let yojson_of_network_config__pod_cidr_overprovision_config =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : network_config__pod_cidr_overprovision_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__pod_cidr_overprovision_config

[@@@deriving.end]

type network_config = {
  create_pod_range : bool prop option; [@option]
  enable_private_nodes : bool prop option; [@option]
  pod_ipv4_cidr_block : string prop option; [@option]
  pod_range : string prop option; [@option]
  network_performance_config :
    network_config__network_performance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_cidr_overprovision_config :
    network_config__pod_cidr_overprovision_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       create_pod_range = v_create_pod_range;
       enable_private_nodes = v_enable_private_nodes;
       pod_ipv4_cidr_block = v_pod_ipv4_cidr_block;
       pod_range = v_pod_range;
       network_performance_config = v_network_performance_config;
       pod_cidr_overprovision_config =
         v_pod_cidr_overprovision_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_cidr_overprovision_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__pod_cidr_overprovision_config)
               v_pod_cidr_overprovision_config
           in
           let bnd = "pod_cidr_overprovision_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_performance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__network_performance_config)
               v_network_performance_config
           in
           let bnd = "network_performance_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_pod_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_private_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_pod_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_pod_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type node_config__advanced_machine_features = {
  threads_per_core : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__advanced_machine_features) -> ()

let yojson_of_node_config__advanced_machine_features =
  (function
   | { threads_per_core = v_threads_per_core } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       `Assoc bnds
    : node_config__advanced_machine_features ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__advanced_machine_features

[@@@deriving.end]

type node_config__confidential_nodes = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__confidential_nodes) -> ()

let yojson_of_node_config__confidential_nodes =
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
    : node_config__confidential_nodes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__confidential_nodes

[@@@deriving.end]

type node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__ephemeral_storage_local_ssd_config) -> ()

let yojson_of_node_config__ephemeral_storage_local_ssd_config =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__ephemeral_storage_local_ssd_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__ephemeral_storage_local_ssd_config

[@@@deriving.end]

type node_config__fast_socket = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__fast_socket) -> ()

let yojson_of_node_config__fast_socket =
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
    : node_config__fast_socket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__fast_socket

[@@@deriving.end]

type node_config__gcfs_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__gcfs_config) -> ()

let yojson_of_node_config__gcfs_config =
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
    : node_config__gcfs_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__gcfs_config

[@@@deriving.end]

type node_config__gvnic = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__gvnic) -> ()

let yojson_of_node_config__gvnic =
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
    : node_config__gvnic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__gvnic

[@@@deriving.end]

type node_config__host_maintenance_policy = {
  maintenance_interval : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__host_maintenance_policy) -> ()

let yojson_of_node_config__host_maintenance_policy =
  (function
   | { maintenance_interval = v_maintenance_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_interval
         in
         ("maintenance_interval", arg) :: bnds
       in
       `Assoc bnds
    : node_config__host_maintenance_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__host_maintenance_policy

[@@@deriving.end]

type node_config__kubelet_config = {
  cpu_cfs_quota : bool prop option; [@option]
  cpu_cfs_quota_period : string prop option; [@option]
  cpu_manager_policy : string prop;
  pod_pids_limit : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__kubelet_config) -> ()

let yojson_of_node_config__kubelet_config =
  (function
   | {
       cpu_cfs_quota = v_cpu_cfs_quota;
       cpu_cfs_quota_period = v_cpu_cfs_quota_period;
       cpu_manager_policy = v_cpu_manager_policy;
       pod_pids_limit = v_pod_pids_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pod_pids_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pod_pids_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_manager_policy
         in
         ("cpu_manager_policy", arg) :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_cfs_quota_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_cfs_quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__kubelet_config

[@@@deriving.end]

type node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
  sysctls : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__linux_node_config) -> ()

let yojson_of_node_config__linux_node_config =
  (function
   | { cgroup_mode = v_cgroup_mode; sysctls = v_sysctls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sysctls with
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
             let bnd = "sysctls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cgroup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cgroup_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__linux_node_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__linux_node_config

[@@@deriving.end]

type node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__local_nvme_ssd_block_config) -> ()

let yojson_of_node_config__local_nvme_ssd_block_config =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__local_nvme_ssd_block_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__local_nvme_ssd_block_config

[@@@deriving.end]

type node_config__reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__reservation_affinity) -> ()

let yojson_of_node_config__reservation_affinity =
  (function
   | {
       consume_reservation_type = v_consume_reservation_type;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consume_reservation_type
         in
         ("consume_reservation_type", arg) :: bnds
       in
       `Assoc bnds
    : node_config__reservation_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__reservation_affinity

[@@@deriving.end]

type node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__shielded_instance_config) -> ()

let yojson_of_node_config__shielded_instance_config =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__shielded_instance_config

[@@@deriving.end]

type node_config__sole_tenant_config__node_affinity = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__sole_tenant_config__node_affinity) -> ()

let yojson_of_node_config__sole_tenant_config__node_affinity =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : node_config__sole_tenant_config__node_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__sole_tenant_config__node_affinity

[@@@deriving.end]

type node_config__sole_tenant_config = {
  node_affinity : node_config__sole_tenant_config__node_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__sole_tenant_config) -> ()

let yojson_of_node_config__sole_tenant_config =
  (function
   | { node_affinity = v_node_affinity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__sole_tenant_config__node_affinity)
               v_node_affinity
           in
           let bnd = "node_affinity", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_config__sole_tenant_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__sole_tenant_config

[@@@deriving.end]

type node_config__taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__taint) -> ()

let yojson_of_node_config__taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_config__taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__taint

[@@@deriving.end]

type node_config__workload_metadata_config = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__workload_metadata_config) -> ()

let yojson_of_node_config__workload_metadata_config =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : node_config__workload_metadata_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__workload_metadata_config

[@@@deriving.end]

type node_config__effective_taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__effective_taints) -> ()

let yojson_of_node_config__effective_taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_config__effective_taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__effective_taints

[@@@deriving.end]

type node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;
  max_shared_clients_per_gpu : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__guest_accelerator__gpu_sharing_config) -> ()

let yojson_of_node_config__guest_accelerator__gpu_sharing_config =
  (function
   | {
       gpu_sharing_strategy = v_gpu_sharing_strategy;
       max_shared_clients_per_gpu = v_max_shared_clients_per_gpu;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_shared_clients_per_gpu
         in
         ("max_shared_clients_per_gpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_sharing_strategy
         in
         ("gpu_sharing_strategy", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator__gpu_sharing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__guest_accelerator__gpu_sharing_config

[@@@deriving.end]

type node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_config__guest_accelerator__gpu_driver_installation_config) ->
  ()

let yojson_of_node_config__guest_accelerator__gpu_driver_installation_config
    =
  (function
   | { gpu_driver_version = v_gpu_driver_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_driver_version
         in
         ("gpu_driver_version", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator__gpu_driver_installation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_config__guest_accelerator__gpu_driver_installation_config

[@@@deriving.end]

type node_config__guest_accelerator = {
  count : float prop;
  gpu_driver_installation_config :
    node_config__guest_accelerator__gpu_driver_installation_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gpu_partition_size : string prop;
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__guest_accelerator) -> ()

let yojson_of_node_config__guest_accelerator =
  (function
   | {
       count = v_count;
       gpu_driver_installation_config =
         v_gpu_driver_installation_config;
       gpu_partition_size = v_gpu_partition_size;
       gpu_sharing_config = v_gpu_sharing_config;
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
         if Stdlib.( = ) [] v_gpu_sharing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__guest_accelerator__gpu_sharing_config)
               v_gpu_sharing_config
           in
           let bnd = "gpu_sharing_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_partition_size
         in
         ("gpu_partition_size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gpu_driver_installation_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__guest_accelerator__gpu_driver_installation_config)
               v_gpu_driver_installation_config
           in
           let bnd = "gpu_driver_installation_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__guest_accelerator

[@@@deriving.end]

type node_config = {
  boot_disk_kms_key : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  disk_type : string prop option; [@option]
  enable_confidential_storage : bool prop option; [@option]
  guest_accelerator : node_config__guest_accelerator list option;
      [@option]
  image_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  local_ssd_count : float prop option; [@option]
  logging_variant : string prop option; [@option]
  machine_type : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  min_cpu_platform : string prop option; [@option]
  node_group : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
  preemptible : bool prop option; [@option]
  resource_labels : (string * string prop) list option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  service_account : string prop option; [@option]
  spot : bool prop option; [@option]
  tags : string prop list option; [@option]
  advanced_machine_features :
    node_config__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidential_nodes : node_config__confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage_local_ssd_config :
    node_config__ephemeral_storage_local_ssd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fast_socket : node_config__fast_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcfs_config : node_config__gcfs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gvnic : node_config__gvnic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host_maintenance_policy :
    node_config__host_maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kubelet_config : node_config__kubelet_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linux_node_config : node_config__linux_node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  local_nvme_ssd_block_config :
    node_config__local_nvme_ssd_block_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity : node_config__reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config :
    node_config__shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sole_tenant_config : node_config__sole_tenant_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taint : node_config__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workload_metadata_config :
    node_config__workload_metadata_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       boot_disk_kms_key = v_boot_disk_kms_key;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       enable_confidential_storage = v_enable_confidential_storage;
       guest_accelerator = v_guest_accelerator;
       image_type = v_image_type;
       labels = v_labels;
       local_ssd_count = v_local_ssd_count;
       logging_variant = v_logging_variant;
       machine_type = v_machine_type;
       metadata = v_metadata;
       min_cpu_platform = v_min_cpu_platform;
       node_group = v_node_group;
       oauth_scopes = v_oauth_scopes;
       preemptible = v_preemptible;
       resource_labels = v_resource_labels;
       resource_manager_tags = v_resource_manager_tags;
       service_account = v_service_account;
       spot = v_spot;
       tags = v_tags;
       advanced_machine_features = v_advanced_machine_features;
       confidential_nodes = v_confidential_nodes;
       ephemeral_storage_local_ssd_config =
         v_ephemeral_storage_local_ssd_config;
       fast_socket = v_fast_socket;
       gcfs_config = v_gcfs_config;
       gvnic = v_gvnic;
       host_maintenance_policy = v_host_maintenance_policy;
       kubelet_config = v_kubelet_config;
       linux_node_config = v_linux_node_config;
       local_nvme_ssd_block_config = v_local_nvme_ssd_block_config;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
       sole_tenant_config = v_sole_tenant_config;
       taint = v_taint;
       workload_metadata_config = v_workload_metadata_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workload_metadata_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__workload_metadata_config)
               v_workload_metadata_config
           in
           let bnd = "workload_metadata_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_taint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__taint) v_taint
           in
           let bnd = "taint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sole_tenant_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__sole_tenant_config)
               v_sole_tenant_config
           in
           let bnd = "sole_tenant_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_nvme_ssd_block_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__local_nvme_ssd_block_config)
               v_local_nvme_ssd_block_config
           in
           let bnd = "local_nvme_ssd_block_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__linux_node_config)
               v_linux_node_config
           in
           let bnd = "linux_node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kubelet_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__kubelet_config)
               v_kubelet_config
           in
           let bnd = "kubelet_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__host_maintenance_policy)
               v_host_maintenance_policy
           in
           let bnd = "host_maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gvnic then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__gvnic) v_gvnic
           in
           let bnd = "gvnic", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcfs_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__gcfs_config)
               v_gcfs_config
           in
           let bnd = "gcfs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fast_socket then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__fast_socket)
               v_fast_socket
           in
           let bnd = "fast_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_storage_local_ssd_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__ephemeral_storage_local_ssd_config)
               v_ephemeral_storage_local_ssd_config
           in
           let bnd = "ephemeral_storage_local_ssd_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidential_nodes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__confidential_nodes)
               v_confidential_nodes
           in
           let bnd = "confidential_nodes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
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
         match v_spot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "spot", arg in
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
         match v_resource_manager_tags with
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
             let bnd = "resource_manager_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_labels with
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
             let bnd = "resource_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preemptible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preemptible", arg in
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
         match v_node_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
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
         match v_logging_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_variant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ssd_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "local_ssd_count", arg in
             bnd :: bnds
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
         match v_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guest_accelerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_node_config__guest_accelerator v
             in
             let bnd = "guest_accelerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_confidential_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
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
       let bnds =
         match v_boot_disk_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

[@@@deriving.end]

type placement_policy = {
  policy_name : string prop option; [@option]
  tpu_topology : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_policy) -> ()

let yojson_of_placement_policy =
  (function
   | {
       policy_name = v_policy_name;
       tpu_topology = v_tpu_topology;
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
         match v_tpu_topology with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpu_topology", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_policy

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

type upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
  batch_percentage : float prop option; [@option]
  batch_soak_duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       upgrade_settings__blue_green_settings__standard_rollout_policy) ->
  ()

let yojson_of_upgrade_settings__blue_green_settings__standard_rollout_policy
    =
  (function
   | {
       batch_node_count = v_batch_node_count;
       batch_percentage = v_batch_percentage;
       batch_soak_duration = v_batch_soak_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_batch_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch_soak_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_settings__blue_green_settings__standard_rollout_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_upgrade_settings__blue_green_settings__standard_rollout_policy

[@@@deriving.end]

type upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
  standard_rollout_policy :
    upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_settings__blue_green_settings) -> ()

let yojson_of_upgrade_settings__blue_green_settings =
  (function
   | {
       node_pool_soak_duration = v_node_pool_soak_duration;
       standard_rollout_policy = v_standard_rollout_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_standard_rollout_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_upgrade_settings__blue_green_settings__standard_rollout_policy)
               v_standard_rollout_policy
           in
           let bnd = "standard_rollout_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_node_pool_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_pool_soak_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_settings__blue_green_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_settings__blue_green_settings

[@@@deriving.end]

type upgrade_settings = {
  max_surge : float prop option; [@option]
  max_unavailable : float prop option; [@option]
  strategy : string prop option; [@option]
  blue_green_settings : upgrade_settings__blue_green_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_settings) -> ()

let yojson_of_upgrade_settings =
  (function
   | {
       max_surge = v_max_surge;
       max_unavailable = v_max_unavailable;
       strategy = v_strategy;
       blue_green_settings = v_blue_green_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_blue_green_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_upgrade_settings__blue_green_settings)
               v_blue_green_settings
           in
           let bnd = "blue_green_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_settings

[@@@deriving.end]

type google_container_node_pool = {
  cluster : string prop;
  id : string prop option; [@option]
  initial_node_count : float prop option; [@option]
  location : string prop option; [@option]
  max_pods_per_node : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  node_count : float prop option; [@option]
  node_locations : string prop list option; [@option]
  project : string prop option; [@option]
  version : string prop option; [@option]
  autoscaling : autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement_policy : placement_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  upgrade_settings : upgrade_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_node_pool) -> ()

let yojson_of_google_container_node_pool =
  (function
   | {
       cluster = v_cluster;
       id = v_id;
       initial_node_count = v_initial_node_count;
       location = v_location;
       max_pods_per_node = v_max_pods_per_node;
       name = v_name;
       name_prefix = v_name_prefix;
       node_count = v_node_count;
       node_locations = v_node_locations;
       project = v_project;
       version = v_version;
       autoscaling = v_autoscaling;
       management = v_management;
       network_config = v_network_config;
       node_config = v_node_config;
       placement_policy = v_placement_policy;
       timeouts = v_timeouts;
       upgrade_settings = v_upgrade_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_upgrade_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_upgrade_settings)
               v_upgrade_settings
           in
           let bnd = "upgrade_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_placement_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement_policy)
               v_placement_policy
           in
           let bnd = "placement_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config) v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_management) v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling) v_autoscaling
           in
           let bnd = "autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
         match v_node_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "node_locations", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
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
         match v_max_pods_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pods_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_node_count", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : google_container_node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_node_pool

[@@@deriving.end]

let autoscaling ?location_policy ?max_node_count ?min_node_count
    ?total_max_node_count ?total_min_node_count () : autoscaling =
  {
    location_policy;
    max_node_count;
    min_node_count;
    total_max_node_count;
    total_min_node_count;
  }

let management ?auto_repair ?auto_upgrade () : management =
  { auto_repair; auto_upgrade }

let network_config__network_performance_config
    ~total_egress_bandwidth_tier () :
    network_config__network_performance_config =
  { total_egress_bandwidth_tier }

let network_config__pod_cidr_overprovision_config ~disabled () :
    network_config__pod_cidr_overprovision_config =
  { disabled }

let network_config ?create_pod_range ?enable_private_nodes
    ?pod_ipv4_cidr_block ?pod_range
    ?(network_performance_config = [])
    ?(pod_cidr_overprovision_config = []) () : network_config =
  {
    create_pod_range;
    enable_private_nodes;
    pod_ipv4_cidr_block;
    pod_range;
    network_performance_config;
    pod_cidr_overprovision_config;
  }

let node_config__advanced_machine_features ~threads_per_core () :
    node_config__advanced_machine_features =
  { threads_per_core }

let node_config__confidential_nodes ~enabled () :
    node_config__confidential_nodes =
  { enabled }

let node_config__ephemeral_storage_local_ssd_config ~local_ssd_count
    () : node_config__ephemeral_storage_local_ssd_config =
  { local_ssd_count }

let node_config__fast_socket ~enabled () : node_config__fast_socket =
  { enabled }

let node_config__gcfs_config ~enabled () : node_config__gcfs_config =
  { enabled }

let node_config__gvnic ~enabled () : node_config__gvnic = { enabled }

let node_config__host_maintenance_policy ~maintenance_interval () :
    node_config__host_maintenance_policy =
  { maintenance_interval }

let node_config__kubelet_config ?cpu_cfs_quota ?cpu_cfs_quota_period
    ?pod_pids_limit ~cpu_manager_policy () :
    node_config__kubelet_config =
  {
    cpu_cfs_quota;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    pod_pids_limit;
  }

let node_config__linux_node_config ?cgroup_mode ?sysctls () :
    node_config__linux_node_config =
  { cgroup_mode; sysctls }

let node_config__local_nvme_ssd_block_config ~local_ssd_count () :
    node_config__local_nvme_ssd_block_config =
  { local_ssd_count }

let node_config__reservation_affinity ?key ?values
    ~consume_reservation_type () : node_config__reservation_affinity
    =
  { consume_reservation_type; key; values }

let node_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot () :
    node_config__shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot }

let node_config__sole_tenant_config__node_affinity ~key ~operator
    ~values () : node_config__sole_tenant_config__node_affinity =
  { key; operator; values }

let node_config__sole_tenant_config ~node_affinity () :
    node_config__sole_tenant_config =
  { node_affinity }

let node_config__taint ~effect ~key ~value () : node_config__taint =
  { effect; key; value }

let node_config__workload_metadata_config ~mode () :
    node_config__workload_metadata_config =
  { mode }

let node_config ?boot_disk_kms_key ?disk_size_gb ?disk_type
    ?enable_confidential_storage ?guest_accelerator ?image_type
    ?labels ?local_ssd_count ?logging_variant ?machine_type ?metadata
    ?min_cpu_platform ?node_group ?oauth_scopes ?preemptible
    ?resource_labels ?resource_manager_tags ?service_account ?spot
    ?tags ?(advanced_machine_features = [])
    ?(confidential_nodes = [])
    ?(ephemeral_storage_local_ssd_config = []) ?(fast_socket = [])
    ?(gcfs_config = []) ?(gvnic = []) ?(host_maintenance_policy = [])
    ?(kubelet_config = []) ?(linux_node_config = [])
    ?(local_nvme_ssd_block_config = []) ?(reservation_affinity = [])
    ?(shielded_instance_config = []) ?(sole_tenant_config = [])
    ?(taint = []) ?(workload_metadata_config = []) () : node_config =
  {
    boot_disk_kms_key;
    disk_size_gb;
    disk_type;
    enable_confidential_storage;
    guest_accelerator;
    image_type;
    labels;
    local_ssd_count;
    logging_variant;
    machine_type;
    metadata;
    min_cpu_platform;
    node_group;
    oauth_scopes;
    preemptible;
    resource_labels;
    resource_manager_tags;
    service_account;
    spot;
    tags;
    advanced_machine_features;
    confidential_nodes;
    ephemeral_storage_local_ssd_config;
    fast_socket;
    gcfs_config;
    gvnic;
    host_maintenance_policy;
    kubelet_config;
    linux_node_config;
    local_nvme_ssd_block_config;
    reservation_affinity;
    shielded_instance_config;
    sole_tenant_config;
    taint;
    workload_metadata_config;
  }

let placement_policy ?policy_name ?tpu_topology ~type_ () :
    placement_policy =
  { policy_name; tpu_topology; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let upgrade_settings__blue_green_settings__standard_rollout_policy
    ?batch_node_count ?batch_percentage ?batch_soak_duration () :
    upgrade_settings__blue_green_settings__standard_rollout_policy =
  { batch_node_count; batch_percentage; batch_soak_duration }

let upgrade_settings__blue_green_settings ?node_pool_soak_duration
    ~standard_rollout_policy () :
    upgrade_settings__blue_green_settings =
  { node_pool_soak_duration; standard_rollout_policy }

let upgrade_settings ?max_surge ?max_unavailable ?strategy
    ?(blue_green_settings = []) () : upgrade_settings =
  { max_surge; max_unavailable; strategy; blue_green_settings }

let google_container_node_pool ?id ?initial_node_count ?location
    ?max_pods_per_node ?name ?name_prefix ?node_count ?node_locations
    ?project ?version ?(autoscaling = []) ?(management = [])
    ?(network_config = []) ?(node_config = [])
    ?(placement_policy = []) ?timeouts ?(upgrade_settings = [])
    ~cluster () : google_container_node_pool =
  {
    cluster;
    id;
    initial_node_count;
    location;
    max_pods_per_node;
    name;
    name_prefix;
    node_count;
    node_locations;
    project;
    version;
    autoscaling;
    management;
    network_config;
    node_config;
    placement_policy;
    timeouts;
    upgrade_settings;
  }

type t = {
  tf_name : string;
  cluster : string prop;
  id : string prop;
  initial_node_count : float prop;
  instance_group_urls : string list prop;
  location : string prop;
  managed_instance_group_urls : string list prop;
  max_pods_per_node : float prop;
  name : string prop;
  name_prefix : string prop;
  node_count : float prop;
  node_locations : string list prop;
  operation : string prop;
  project : string prop;
  version : string prop;
}

let make ?id ?initial_node_count ?location ?max_pods_per_node ?name
    ?name_prefix ?node_count ?node_locations ?project ?version
    ?(autoscaling = []) ?(management = []) ?(network_config = [])
    ?(node_config = []) ?(placement_policy = []) ?timeouts
    ?(upgrade_settings = []) ~cluster __id =
  let __type = "google_container_node_pool" in
  let __attrs =
    ({
       tf_name = __id;
       cluster = Prop.computed __type __id "cluster";
       id = Prop.computed __type __id "id";
       initial_node_count =
         Prop.computed __type __id "initial_node_count";
       instance_group_urls =
         Prop.computed __type __id "instance_group_urls";
       location = Prop.computed __type __id "location";
       managed_instance_group_urls =
         Prop.computed __type __id "managed_instance_group_urls";
       max_pods_per_node =
         Prop.computed __type __id "max_pods_per_node";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       node_count = Prop.computed __type __id "node_count";
       node_locations = Prop.computed __type __id "node_locations";
       operation = Prop.computed __type __id "operation";
       project = Prop.computed __type __id "project";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_node_pool
        (google_container_node_pool ?id ?initial_node_count ?location
           ?max_pods_per_node ?name ?name_prefix ?node_count
           ?node_locations ?project ?version ~autoscaling ~management
           ~network_config ~node_config ~placement_policy ?timeouts
           ~upgrade_settings ~cluster ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?initial_node_count ?location
    ?max_pods_per_node ?name ?name_prefix ?node_count ?node_locations
    ?project ?version ?(autoscaling = []) ?(management = [])
    ?(network_config = []) ?(node_config = [])
    ?(placement_policy = []) ?timeouts ?(upgrade_settings = [])
    ~cluster __id =
  let (r : _ Tf_core.resource) =
    make ?id ?initial_node_count ?location ?max_pods_per_node ?name
      ?name_prefix ?node_count ?node_locations ?project ?version
      ~autoscaling ~management ~network_config ~node_config
      ~placement_policy ?timeouts ~upgrade_settings ~cluster __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

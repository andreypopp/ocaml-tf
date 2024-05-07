(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aci_connector_linux__connector_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aci_connector_linux__connector_identity) -> ()

let yojson_of_aci_connector_linux__connector_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : aci_connector_linux__connector_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aci_connector_linux__connector_identity

[@@@deriving.end]

type aci_connector_linux = { subnet_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aci_connector_linux) -> ()

let yojson_of_aci_connector_linux =
  (function
   | { subnet_name = v_subnet_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_name in
         ("subnet_name", arg) :: bnds
       in
       `Assoc bnds
    : aci_connector_linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aci_connector_linux

[@@@deriving.end]

type api_server_access_profile = {
  authorized_ip_ranges : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  vnet_integration_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_server_access_profile) -> ()

let yojson_of_api_server_access_profile =
  (function
   | {
       authorized_ip_ranges = v_authorized_ip_ranges;
       subnet_id = v_subnet_id;
       vnet_integration_enabled = v_vnet_integration_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vnet_integration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vnet_integration_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorized_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorized_ip_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : api_server_access_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_server_access_profile

[@@@deriving.end]

type auto_scaler_profile = {
  balance_similar_node_groups : bool prop option; [@option]
  empty_bulk_delete_max : string prop option; [@option]
  expander : string prop option; [@option]
  max_graceful_termination_sec : string prop option; [@option]
  max_node_provisioning_time : string prop option; [@option]
  max_unready_nodes : float prop option; [@option]
  max_unready_percentage : float prop option; [@option]
  new_pod_scale_up_delay : string prop option; [@option]
  scale_down_delay_after_add : string prop option; [@option]
  scale_down_delay_after_delete : string prop option; [@option]
  scale_down_delay_after_failure : string prop option; [@option]
  scale_down_unneeded : string prop option; [@option]
  scale_down_unready : string prop option; [@option]
  scale_down_utilization_threshold : string prop option; [@option]
  scan_interval : string prop option; [@option]
  skip_nodes_with_local_storage : bool prop option; [@option]
  skip_nodes_with_system_pods : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scaler_profile) -> ()

let yojson_of_auto_scaler_profile =
  (function
   | {
       balance_similar_node_groups = v_balance_similar_node_groups;
       empty_bulk_delete_max = v_empty_bulk_delete_max;
       expander = v_expander;
       max_graceful_termination_sec = v_max_graceful_termination_sec;
       max_node_provisioning_time = v_max_node_provisioning_time;
       max_unready_nodes = v_max_unready_nodes;
       max_unready_percentage = v_max_unready_percentage;
       new_pod_scale_up_delay = v_new_pod_scale_up_delay;
       scale_down_delay_after_add = v_scale_down_delay_after_add;
       scale_down_delay_after_delete =
         v_scale_down_delay_after_delete;
       scale_down_delay_after_failure =
         v_scale_down_delay_after_failure;
       scale_down_unneeded = v_scale_down_unneeded;
       scale_down_unready = v_scale_down_unready;
       scale_down_utilization_threshold =
         v_scale_down_utilization_threshold;
       scan_interval = v_scan_interval;
       skip_nodes_with_local_storage =
         v_skip_nodes_with_local_storage;
       skip_nodes_with_system_pods = v_skip_nodes_with_system_pods;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_nodes_with_system_pods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_nodes_with_system_pods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_nodes_with_local_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_nodes_with_local_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scan_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scan_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_utilization_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_utilization_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_unready with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_unready", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_unneeded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_unneeded", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_delay_after_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_delay_after_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_delay_after_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_delay_after_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_delay_after_add with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_delay_after_add", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_pod_scale_up_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "new_pod_scale_up_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unready_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unready_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unready_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unready_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_node_provisioning_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_node_provisioning_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_graceful_termination_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_graceful_termination_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expander with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expander", arg in
             bnd :: bnds
       in
       let bnds =
         match v_empty_bulk_delete_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "empty_bulk_delete_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_balance_similar_node_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "balance_similar_node_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_scaler_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaler_profile

[@@@deriving.end]

type azure_active_directory_role_based_access_control = {
  admin_group_object_ids : string prop list option; [@option]
  azure_rbac_enabled : bool prop option; [@option]
  client_app_id : string prop option; [@option]
  managed : bool prop option; [@option]
  server_app_id : string prop option; [@option]
  server_app_secret : string prop option; [@option]
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azure_active_directory_role_based_access_control) -> ()

let yojson_of_azure_active_directory_role_based_access_control =
  (function
   | {
       admin_group_object_ids = v_admin_group_object_ids;
       azure_rbac_enabled = v_azure_rbac_enabled;
       client_app_id = v_client_app_id;
       managed = v_managed;
       server_app_id = v_server_app_id;
       server_app_secret = v_server_app_secret;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_app_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_app_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "managed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azure_rbac_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azure_rbac_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_group_object_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_group_object_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azure_active_directory_role_based_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_active_directory_role_based_access_control

[@@@deriving.end]

type confidential_computing = {
  sgx_quote_helper_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : confidential_computing) -> ()

let yojson_of_confidential_computing =
  (function
   | { sgx_quote_helper_enabled = v_sgx_quote_helper_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_sgx_quote_helper_enabled
         in
         ("sgx_quote_helper_enabled", arg) :: bnds
       in
       `Assoc bnds
    : confidential_computing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confidential_computing

[@@@deriving.end]

type default_node_pool__kubelet_config = {
  allowed_unsafe_sysctls : string prop list option; [@option]
  container_log_max_line : float prop option; [@option]
  container_log_max_size_mb : float prop option; [@option]
  cpu_cfs_quota_enabled : bool prop option; [@option]
  cpu_cfs_quota_period : string prop option; [@option]
  cpu_manager_policy : string prop option; [@option]
  image_gc_high_threshold : float prop option; [@option]
  image_gc_low_threshold : float prop option; [@option]
  pod_max_pid : float prop option; [@option]
  topology_manager_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_node_pool__kubelet_config) -> ()

let yojson_of_default_node_pool__kubelet_config =
  (function
   | {
       allowed_unsafe_sysctls = v_allowed_unsafe_sysctls;
       container_log_max_line = v_container_log_max_line;
       container_log_max_size_mb = v_container_log_max_size_mb;
       cpu_cfs_quota_enabled = v_cpu_cfs_quota_enabled;
       cpu_cfs_quota_period = v_cpu_cfs_quota_period;
       cpu_manager_policy = v_cpu_manager_policy;
       image_gc_high_threshold = v_image_gc_high_threshold;
       image_gc_low_threshold = v_image_gc_low_threshold;
       pod_max_pid = v_pod_max_pid;
       topology_manager_policy = v_topology_manager_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topology_manager_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topology_manager_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_max_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pod_max_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_gc_low_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_gc_low_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_gc_high_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_gc_high_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_manager_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_manager_policy", arg in
             bnd :: bnds
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
         match v_cpu_cfs_quota_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_cfs_quota_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_log_max_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_log_max_size_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_log_max_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_log_max_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_unsafe_sysctls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_unsafe_sysctls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool__kubelet_config

[@@@deriving.end]

type default_node_pool__linux_os_config__sysctl_config = {
  fs_aio_max_nr : float prop option; [@option]
  fs_file_max : float prop option; [@option]
  fs_inotify_max_user_watches : float prop option; [@option]
  fs_nr_open : float prop option; [@option]
  kernel_threads_max : float prop option; [@option]
  net_core_netdev_max_backlog : float prop option; [@option]
  net_core_optmem_max : float prop option; [@option]
  net_core_rmem_default : float prop option; [@option]
  net_core_rmem_max : float prop option; [@option]
  net_core_somaxconn : float prop option; [@option]
  net_core_wmem_default : float prop option; [@option]
  net_core_wmem_max : float prop option; [@option]
  net_ipv4_ip_local_port_range_max : float prop option; [@option]
  net_ipv4_ip_local_port_range_min : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh1 : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh2 : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh3 : float prop option; [@option]
  net_ipv4_tcp_fin_timeout : float prop option; [@option]
  net_ipv4_tcp_keepalive_intvl : float prop option; [@option]
  net_ipv4_tcp_keepalive_probes : float prop option; [@option]
  net_ipv4_tcp_keepalive_time : float prop option; [@option]
  net_ipv4_tcp_max_syn_backlog : float prop option; [@option]
  net_ipv4_tcp_max_tw_buckets : float prop option; [@option]
  net_ipv4_tcp_tw_reuse : bool prop option; [@option]
  net_netfilter_nf_conntrack_buckets : float prop option; [@option]
  net_netfilter_nf_conntrack_max : float prop option; [@option]
  vm_max_map_count : float prop option; [@option]
  vm_swappiness : float prop option; [@option]
  vm_vfs_cache_pressure : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_node_pool__linux_os_config__sysctl_config) -> ()

let yojson_of_default_node_pool__linux_os_config__sysctl_config =
  (function
   | {
       fs_aio_max_nr = v_fs_aio_max_nr;
       fs_file_max = v_fs_file_max;
       fs_inotify_max_user_watches = v_fs_inotify_max_user_watches;
       fs_nr_open = v_fs_nr_open;
       kernel_threads_max = v_kernel_threads_max;
       net_core_netdev_max_backlog = v_net_core_netdev_max_backlog;
       net_core_optmem_max = v_net_core_optmem_max;
       net_core_rmem_default = v_net_core_rmem_default;
       net_core_rmem_max = v_net_core_rmem_max;
       net_core_somaxconn = v_net_core_somaxconn;
       net_core_wmem_default = v_net_core_wmem_default;
       net_core_wmem_max = v_net_core_wmem_max;
       net_ipv4_ip_local_port_range_max =
         v_net_ipv4_ip_local_port_range_max;
       net_ipv4_ip_local_port_range_min =
         v_net_ipv4_ip_local_port_range_min;
       net_ipv4_neigh_default_gc_thresh1 =
         v_net_ipv4_neigh_default_gc_thresh1;
       net_ipv4_neigh_default_gc_thresh2 =
         v_net_ipv4_neigh_default_gc_thresh2;
       net_ipv4_neigh_default_gc_thresh3 =
         v_net_ipv4_neigh_default_gc_thresh3;
       net_ipv4_tcp_fin_timeout = v_net_ipv4_tcp_fin_timeout;
       net_ipv4_tcp_keepalive_intvl = v_net_ipv4_tcp_keepalive_intvl;
       net_ipv4_tcp_keepalive_probes =
         v_net_ipv4_tcp_keepalive_probes;
       net_ipv4_tcp_keepalive_time = v_net_ipv4_tcp_keepalive_time;
       net_ipv4_tcp_max_syn_backlog = v_net_ipv4_tcp_max_syn_backlog;
       net_ipv4_tcp_max_tw_buckets = v_net_ipv4_tcp_max_tw_buckets;
       net_ipv4_tcp_tw_reuse = v_net_ipv4_tcp_tw_reuse;
       net_netfilter_nf_conntrack_buckets =
         v_net_netfilter_nf_conntrack_buckets;
       net_netfilter_nf_conntrack_max =
         v_net_netfilter_nf_conntrack_max;
       vm_max_map_count = v_vm_max_map_count;
       vm_swappiness = v_vm_swappiness;
       vm_vfs_cache_pressure = v_vm_vfs_cache_pressure;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vm_vfs_cache_pressure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_vfs_cache_pressure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vm_swappiness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_swappiness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vm_max_map_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_max_map_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_netfilter_nf_conntrack_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_netfilter_nf_conntrack_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_netfilter_nf_conntrack_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_netfilter_nf_conntrack_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_tw_reuse with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "net_ipv4_tcp_tw_reuse", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_max_tw_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_max_tw_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_max_syn_backlog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_max_syn_backlog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_probes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_probes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_intvl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_intvl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_fin_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_fin_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_ip_local_port_range_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_ip_local_port_range_min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_ip_local_port_range_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_ip_local_port_range_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_wmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_wmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_wmem_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_wmem_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_somaxconn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_somaxconn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_rmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_rmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_rmem_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_rmem_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_optmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_optmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_netdev_max_backlog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_netdev_max_backlog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kernel_threads_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "kernel_threads_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_nr_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_nr_open", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_inotify_max_user_watches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_inotify_max_user_watches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_file_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_file_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_aio_max_nr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_aio_max_nr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool__linux_os_config__sysctl_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool__linux_os_config__sysctl_config

[@@@deriving.end]

type default_node_pool__linux_os_config = {
  swap_file_size_mb : float prop option; [@option]
  transparent_huge_page_defrag : string prop option; [@option]
  transparent_huge_page_enabled : string prop option; [@option]
  sysctl_config :
    default_node_pool__linux_os_config__sysctl_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_node_pool__linux_os_config) -> ()

let yojson_of_default_node_pool__linux_os_config =
  (function
   | {
       swap_file_size_mb = v_swap_file_size_mb;
       transparent_huge_page_defrag = v_transparent_huge_page_defrag;
       transparent_huge_page_enabled =
         v_transparent_huge_page_enabled;
       sysctl_config = v_sysctl_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_node_pool__linux_os_config__sysctl_config
             v_sysctl_config
         in
         ("sysctl_config", arg) :: bnds
       in
       let bnds =
         match v_transparent_huge_page_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transparent_huge_page_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transparent_huge_page_defrag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transparent_huge_page_defrag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_swap_file_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "swap_file_size_mb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool__linux_os_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool__linux_os_config

[@@@deriving.end]

type default_node_pool__node_network_profile__allowed_host_ports = {
  port_end : float prop option; [@option]
  port_start : float prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_node_pool__node_network_profile__allowed_host_ports) ->
  ()

let yojson_of_default_node_pool__node_network_profile__allowed_host_ports
    =
  (function
   | {
       port_end = v_port_end;
       port_start = v_port_start;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_port_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port_end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool__node_network_profile__allowed_host_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_node_pool__node_network_profile__allowed_host_ports

[@@@deriving.end]

type default_node_pool__node_network_profile = {
  application_security_group_ids : string prop list option; [@option]
  node_public_ip_tags : (string * string prop) list option; [@option]
  allowed_host_ports :
    default_node_pool__node_network_profile__allowed_host_ports list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_node_pool__node_network_profile) -> ()

let yojson_of_default_node_pool__node_network_profile =
  (function
   | {
       application_security_group_ids =
         v_application_security_group_ids;
       node_public_ip_tags = v_node_public_ip_tags;
       allowed_host_ports = v_allowed_host_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_node_pool__node_network_profile__allowed_host_ports
             v_allowed_host_ports
         in
         ("allowed_host_ports", arg) :: bnds
       in
       let bnds =
         match v_node_public_ip_tags with
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
             let bnd = "node_public_ip_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "application_security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool__node_network_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool__node_network_profile

[@@@deriving.end]

type default_node_pool__upgrade_settings = {
  max_surge : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_node_pool__upgrade_settings) -> ()

let yojson_of_default_node_pool__upgrade_settings =
  (function
   | { max_surge = v_max_surge } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_surge in
         ("max_surge", arg) :: bnds
       in
       `Assoc bnds
    : default_node_pool__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool__upgrade_settings

[@@@deriving.end]

type default_node_pool = {
  capacity_reservation_group_id : string prop option; [@option]
  custom_ca_trust_enabled : bool prop option; [@option]
  enable_auto_scaling : bool prop option; [@option]
  enable_host_encryption : bool prop option; [@option]
  enable_node_public_ip : bool prop option; [@option]
  fips_enabled : bool prop option; [@option]
  gpu_instance : string prop option; [@option]
  host_group_id : string prop option; [@option]
  kubelet_disk_type : string prop option; [@option]
  max_count : float prop option; [@option]
  max_pods : float prop option; [@option]
  message_of_the_day : string prop option; [@option]
  min_count : float prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  node_labels : (string * string prop) list option; [@option]
  node_public_ip_prefix_id : string prop option; [@option]
  node_taints : string prop list option; [@option]
  only_critical_addons_enabled : bool prop option; [@option]
  orchestrator_version : string prop option; [@option]
  os_disk_size_gb : float prop option; [@option]
  os_disk_type : string prop option; [@option]
  os_sku : string prop option; [@option]
  pod_subnet_id : string prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  scale_down_mode : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  temporary_name_for_rotation : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  ultra_ssd_enabled : bool prop option; [@option]
  vm_size : string prop;
  vnet_subnet_id : string prop option; [@option]
  workload_runtime : string prop option; [@option]
  zones : string prop list option; [@option]
  kubelet_config : default_node_pool__kubelet_config list;
  linux_os_config : default_node_pool__linux_os_config list;
  node_network_profile :
    default_node_pool__node_network_profile list;
  upgrade_settings : default_node_pool__upgrade_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_node_pool) -> ()

let yojson_of_default_node_pool =
  (function
   | {
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       custom_ca_trust_enabled = v_custom_ca_trust_enabled;
       enable_auto_scaling = v_enable_auto_scaling;
       enable_host_encryption = v_enable_host_encryption;
       enable_node_public_ip = v_enable_node_public_ip;
       fips_enabled = v_fips_enabled;
       gpu_instance = v_gpu_instance;
       host_group_id = v_host_group_id;
       kubelet_disk_type = v_kubelet_disk_type;
       max_count = v_max_count;
       max_pods = v_max_pods;
       message_of_the_day = v_message_of_the_day;
       min_count = v_min_count;
       name = v_name;
       node_count = v_node_count;
       node_labels = v_node_labels;
       node_public_ip_prefix_id = v_node_public_ip_prefix_id;
       node_taints = v_node_taints;
       only_critical_addons_enabled = v_only_critical_addons_enabled;
       orchestrator_version = v_orchestrator_version;
       os_disk_size_gb = v_os_disk_size_gb;
       os_disk_type = v_os_disk_type;
       os_sku = v_os_sku;
       pod_subnet_id = v_pod_subnet_id;
       proximity_placement_group_id = v_proximity_placement_group_id;
       scale_down_mode = v_scale_down_mode;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
       temporary_name_for_rotation = v_temporary_name_for_rotation;
       type_ = v_type_;
       ultra_ssd_enabled = v_ultra_ssd_enabled;
       vm_size = v_vm_size;
       vnet_subnet_id = v_vnet_subnet_id;
       workload_runtime = v_workload_runtime;
       zones = v_zones;
       kubelet_config = v_kubelet_config;
       linux_os_config = v_linux_os_config;
       node_network_profile = v_node_network_profile;
       upgrade_settings = v_upgrade_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_node_pool__upgrade_settings
             v_upgrade_settings
         in
         ("upgrade_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_node_pool__node_network_profile
             v_node_network_profile
         in
         ("node_network_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_node_pool__linux_os_config
             v_linux_os_config
         in
         ("linux_os_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_node_pool__kubelet_config
             v_kubelet_config
         in
         ("kubelet_config", arg) :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workload_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workload_runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vnet_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_ultra_ssd_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ultra_ssd_enabled", arg in
             bnd :: bnds
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
         match v_temporary_name_for_rotation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temporary_name_for_rotation", arg in
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
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proximity_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proximity_placement_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "os_disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_orchestrator_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "orchestrator_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_only_critical_addons_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_critical_addons_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_taints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "node_taints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_public_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_public_ip_prefix_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_labels with
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
             let bnd = "node_labels", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_message_of_the_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_of_the_day", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_pods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pods", arg in
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
         match v_kubelet_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kubelet_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gpu_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gpu_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_node_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_node_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_host_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_host_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_scaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_scaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_ca_trust_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "custom_ca_trust_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity_reservation_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_node_pool

[@@@deriving.end]

type http_proxy_config = {
  http_proxy : string prop option; [@option]
  https_proxy : string prop option; [@option]
  no_proxy : string prop list option; [@option]
  trusted_ca : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_proxy_config) -> ()

let yojson_of_http_proxy_config =
  (function
   | {
       http_proxy = v_http_proxy;
       https_proxy = v_https_proxy;
       no_proxy = v_no_proxy;
       trusted_ca = v_trusted_ca;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trusted_ca with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trusted_ca", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "no_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_proxy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_proxy_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_proxy_config

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

type ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       ingress_application_gateway__ingress_application_gateway_identity) ->
  ()

let yojson_of_ingress_application_gateway__ingress_application_gateway_identity
    =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : ingress_application_gateway__ingress_application_gateway_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_ingress_application_gateway__ingress_application_gateway_identity

[@@@deriving.end]

type ingress_application_gateway = {
  gateway_id : string prop option; [@option]
  gateway_name : string prop option; [@option]
  subnet_cidr : string prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_application_gateway) -> ()

let yojson_of_ingress_application_gateway =
  (function
   | {
       gateway_id = v_gateway_id;
       gateway_name = v_gateway_name;
       subnet_cidr = v_subnet_cidr;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress_application_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_application_gateway

[@@@deriving.end]

type key_management_service = {
  key_vault_key_id : string prop;
  key_vault_network_access : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_management_service) -> ()

let yojson_of_key_management_service =
  (function
   | {
       key_vault_key_id = v_key_vault_key_id;
       key_vault_network_access = v_key_vault_network_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_vault_network_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_network_access", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       `Assoc bnds
    : key_management_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_management_service

[@@@deriving.end]

type key_vault_secrets_provider__secret_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_secrets_provider__secret_identity) -> ()

let yojson_of_key_vault_secrets_provider__secret_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_secrets_provider__secret_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_secrets_provider__secret_identity

[@@@deriving.end]

type key_vault_secrets_provider = {
  secret_rotation_enabled : bool prop option; [@option]
  secret_rotation_interval : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_secrets_provider) -> ()

let yojson_of_key_vault_secrets_provider =
  (function
   | {
       secret_rotation_enabled = v_secret_rotation_enabled;
       secret_rotation_interval = v_secret_rotation_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_rotation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_rotation_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_rotation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secret_rotation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : key_vault_secrets_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_secrets_provider

[@@@deriving.end]

type kubelet_identity = {
  client_id : string prop option; [@option]
  object_id : string prop option; [@option]
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubelet_identity) -> ()

let yojson_of_kubelet_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubelet_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubelet_identity

[@@@deriving.end]

type linux_profile__ssh_key = { key_data : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_profile__ssh_key) -> ()

let yojson_of_linux_profile__ssh_key =
  (function
   | { key_data = v_key_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_data in
         ("key_data", arg) :: bnds
       in
       `Assoc bnds
    : linux_profile__ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_profile__ssh_key

[@@@deriving.end]

type linux_profile = {
  admin_username : string prop;
  ssh_key : linux_profile__ssh_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_profile) -> ()

let yojson_of_linux_profile =
  (function
   | { admin_username = v_admin_username; ssh_key = v_ssh_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_linux_profile__ssh_key v_ssh_key
         in
         ("ssh_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : linux_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_profile

[@@@deriving.end]

type maintenance_window__allowed = {
  day : string prop;
  hours : float prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window__allowed) -> ()

let yojson_of_maintenance_window__allowed =
  (function
   | { day = v_day; hours = v_hours } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_hours
         in
         ("hours", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window__allowed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window__allowed

[@@@deriving.end]

type maintenance_window__not_allowed = {
  end_ : string prop; [@key "end"]
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window__not_allowed) -> ()

let yojson_of_maintenance_window__not_allowed =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window__not_allowed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window__not_allowed

[@@@deriving.end]

type maintenance_window = {
  allowed : maintenance_window__allowed list;
  not_allowed : maintenance_window__not_allowed list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { allowed = v_allowed; not_allowed = v_not_allowed } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window__not_allowed
             v_not_allowed
         in
         ("not_allowed", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window__allowed
             v_allowed
         in
         ("allowed", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type maintenance_window_auto_upgrade__not_allowed = {
  end_ : string prop; [@key "end"]
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window_auto_upgrade__not_allowed) -> ()

let yojson_of_maintenance_window_auto_upgrade__not_allowed =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window_auto_upgrade__not_allowed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window_auto_upgrade__not_allowed

[@@@deriving.end]

type maintenance_window_auto_upgrade = {
  day_of_month : float prop option; [@option]
  day_of_week : string prop option; [@option]
  duration : float prop;
  frequency : string prop;
  interval : float prop;
  start_date : string prop option; [@option]
  start_time : string prop option; [@option]
  utc_offset : string prop option; [@option]
  week_index : string prop option; [@option]
  not_allowed : maintenance_window_auto_upgrade__not_allowed list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window_auto_upgrade) -> ()

let yojson_of_maintenance_window_auto_upgrade =
  (function
   | {
       day_of_month = v_day_of_month;
       day_of_week = v_day_of_week;
       duration = v_duration;
       frequency = v_frequency;
       interval = v_interval;
       start_date = v_start_date;
       start_time = v_start_time;
       utc_offset = v_utc_offset;
       week_index = v_week_index;
       not_allowed = v_not_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_window_auto_upgrade__not_allowed
             v_not_allowed
         in
         ("not_allowed", arg) :: bnds
       in
       let bnds =
         match v_week_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "week_index", arg in
             bnd :: bnds
       in
       let bnds =
         match v_utc_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "utc_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         match v_day_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_window_auto_upgrade ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window_auto_upgrade

[@@@deriving.end]

type maintenance_window_node_os__not_allowed = {
  end_ : string prop; [@key "end"]
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window_node_os__not_allowed) -> ()

let yojson_of_maintenance_window_node_os__not_allowed =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window_node_os__not_allowed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window_node_os__not_allowed

[@@@deriving.end]

type maintenance_window_node_os = {
  day_of_month : float prop option; [@option]
  day_of_week : string prop option; [@option]
  duration : float prop;
  frequency : string prop;
  interval : float prop;
  start_date : string prop option; [@option]
  start_time : string prop option; [@option]
  utc_offset : string prop option; [@option]
  week_index : string prop option; [@option]
  not_allowed : maintenance_window_node_os__not_allowed list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window_node_os) -> ()

let yojson_of_maintenance_window_node_os =
  (function
   | {
       day_of_month = v_day_of_month;
       day_of_week = v_day_of_week;
       duration = v_duration;
       frequency = v_frequency;
       interval = v_interval;
       start_date = v_start_date;
       start_time = v_start_time;
       utc_offset = v_utc_offset;
       week_index = v_week_index;
       not_allowed = v_not_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_window_node_os__not_allowed
             v_not_allowed
         in
         ("not_allowed", arg) :: bnds
       in
       let bnds =
         match v_week_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "week_index", arg in
             bnd :: bnds
       in
       let bnds =
         match v_utc_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "utc_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         match v_day_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_window_node_os -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window_node_os

[@@@deriving.end]

type microsoft_defender = {
  log_analytics_workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : microsoft_defender) -> ()

let yojson_of_microsoft_defender =
  (function
   | { log_analytics_workspace_id = v_log_analytics_workspace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : microsoft_defender -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_microsoft_defender

[@@@deriving.end]

type monitor_metrics = {
  annotations_allowed : string prop option; [@option]
  labels_allowed : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor_metrics) -> ()

let yojson_of_monitor_metrics =
  (function
   | {
       annotations_allowed = v_annotations_allowed;
       labels_allowed = v_labels_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_labels_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "labels_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "annotations_allowed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitor_metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor_metrics

[@@@deriving.end]

type network_profile__load_balancer_profile = {
  idle_timeout_in_minutes : float prop option; [@option]
  managed_outbound_ip_count : float prop option; [@option]
  managed_outbound_ipv6_count : float prop option; [@option]
  outbound_ip_address_ids : string prop list option; [@option]
  outbound_ip_prefix_ids : string prop list option; [@option]
  outbound_ports_allocated : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__load_balancer_profile) -> ()

let yojson_of_network_profile__load_balancer_profile =
  (function
   | {
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       managed_outbound_ip_count = v_managed_outbound_ip_count;
       managed_outbound_ipv6_count = v_managed_outbound_ipv6_count;
       outbound_ip_address_ids = v_outbound_ip_address_ids;
       outbound_ip_prefix_ids = v_outbound_ip_prefix_ids;
       outbound_ports_allocated = v_outbound_ports_allocated;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_outbound_ports_allocated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "outbound_ports_allocated", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_ip_prefix_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "outbound_ip_prefix_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_ip_address_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "outbound_ip_address_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_outbound_ipv6_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "managed_outbound_ipv6_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_outbound_ip_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "managed_outbound_ip_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile__load_balancer_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__load_balancer_profile

[@@@deriving.end]

type network_profile__nat_gateway_profile = {
  idle_timeout_in_minutes : float prop option; [@option]
  managed_outbound_ip_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__nat_gateway_profile) -> ()

let yojson_of_network_profile__nat_gateway_profile =
  (function
   | {
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       managed_outbound_ip_count = v_managed_outbound_ip_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_managed_outbound_ip_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "managed_outbound_ip_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile__nat_gateway_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__nat_gateway_profile

[@@@deriving.end]

type network_profile = {
  dns_service_ip : string prop option; [@option]
  docker_bridge_cidr : string prop option; [@option]
  ebpf_data_plane : string prop option; [@option]
  ip_versions : string prop list option; [@option]
  load_balancer_sku : string prop option; [@option]
  network_mode : string prop option; [@option]
  network_plugin : string prop;
  network_plugin_mode : string prop option; [@option]
  network_policy : string prop option; [@option]
  outbound_type : string prop option; [@option]
  pod_cidr : string prop option; [@option]
  pod_cidrs : string prop list option; [@option]
  service_cidr : string prop option; [@option]
  service_cidrs : string prop list option; [@option]
  load_balancer_profile :
    network_profile__load_balancer_profile list;
  nat_gateway_profile : network_profile__nat_gateway_profile list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       dns_service_ip = v_dns_service_ip;
       docker_bridge_cidr = v_docker_bridge_cidr;
       ebpf_data_plane = v_ebpf_data_plane;
       ip_versions = v_ip_versions;
       load_balancer_sku = v_load_balancer_sku;
       network_mode = v_network_mode;
       network_plugin = v_network_plugin;
       network_plugin_mode = v_network_plugin_mode;
       network_policy = v_network_policy;
       outbound_type = v_outbound_type;
       pod_cidr = v_pod_cidr;
       pod_cidrs = v_pod_cidrs;
       service_cidr = v_service_cidr;
       service_cidrs = v_service_cidrs;
       load_balancer_profile = v_load_balancer_profile;
       nat_gateway_profile = v_nat_gateway_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_profile__nat_gateway_profile
             v_nat_gateway_profile
         in
         ("nat_gateway_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_profile__load_balancer_profile
             v_load_balancer_profile
         in
         ("load_balancer_profile", arg) :: bnds
       in
       let bnds =
         match v_service_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "pod_cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_plugin_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_plugin_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_plugin
         in
         ("network_plugin", arg) :: bnds
       in
       let bnds =
         match v_network_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebpf_data_plane with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebpf_data_plane", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_bridge_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_bridge_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_service_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_service_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

[@@@deriving.end]

type oms_agent__oms_agent_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oms_agent__oms_agent_identity) -> ()

let yojson_of_oms_agent__oms_agent_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : oms_agent__oms_agent_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oms_agent__oms_agent_identity

[@@@deriving.end]

type oms_agent = {
  log_analytics_workspace_id : string prop;
  msi_auth_for_monitoring_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oms_agent) -> ()

let yojson_of_oms_agent =
  (function
   | {
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       msi_auth_for_monitoring_enabled =
         v_msi_auth_for_monitoring_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_msi_auth_for_monitoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "msi_auth_for_monitoring_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : oms_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oms_agent

[@@@deriving.end]

type service_mesh_profile = {
  external_ingress_gateway_enabled : bool prop option; [@option]
  internal_ingress_gateway_enabled : bool prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_mesh_profile) -> ()

let yojson_of_service_mesh_profile =
  (function
   | {
       external_ingress_gateway_enabled =
         v_external_ingress_gateway_enabled;
       internal_ingress_gateway_enabled =
         v_internal_ingress_gateway_enabled;
       mode = v_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_internal_ingress_gateway_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_ingress_gateway_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_ingress_gateway_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "external_ingress_gateway_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_mesh_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_mesh_profile

[@@@deriving.end]

type service_principal = {
  client_id : string prop;
  client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_principal) -> ()

let yojson_of_service_principal =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : service_principal -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_principal

[@@@deriving.end]

type storage_profile = {
  blob_driver_enabled : bool prop option; [@option]
  disk_driver_enabled : bool prop option; [@option]
  disk_driver_version : string prop option; [@option]
  file_driver_enabled : bool prop option; [@option]
  snapshot_controller_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile) -> ()

let yojson_of_storage_profile =
  (function
   | {
       blob_driver_enabled = v_blob_driver_enabled;
       disk_driver_enabled = v_disk_driver_enabled;
       disk_driver_version = v_disk_driver_version;
       file_driver_enabled = v_file_driver_enabled;
       snapshot_controller_enabled = v_snapshot_controller_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_snapshot_controller_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "snapshot_controller_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_driver_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "file_driver_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_driver_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_driver_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_driver_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disk_driver_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blob_driver_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "blob_driver_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile

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

type web_app_routing__web_app_routing_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : web_app_routing__web_app_routing_identity) -> ()

let yojson_of_web_app_routing__web_app_routing_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : web_app_routing__web_app_routing_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_web_app_routing__web_app_routing_identity

[@@@deriving.end]

type web_app_routing = { dns_zone_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : web_app_routing) -> ()

let yojson_of_web_app_routing =
  (function
   | { dns_zone_id = v_dns_zone_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_zone_id in
         ("dns_zone_id", arg) :: bnds
       in
       `Assoc bnds
    : web_app_routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_web_app_routing

[@@@deriving.end]

type windows_profile__gmsa = {
  dns_server : string prop;
  root_domain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_profile__gmsa) -> ()

let yojson_of_windows_profile__gmsa =
  (function
   | { dns_server = v_dns_server; root_domain = v_root_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_root_domain in
         ("root_domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_server in
         ("dns_server", arg) :: bnds
       in
       `Assoc bnds
    : windows_profile__gmsa -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_profile__gmsa

[@@@deriving.end]

type windows_profile = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  license : string prop option; [@option]
  gmsa : windows_profile__gmsa list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_profile) -> ()

let yojson_of_windows_profile =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       license = v_license;
       gmsa = v_gmsa;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_windows_profile__gmsa v_gmsa
         in
         ("gmsa", arg) :: bnds
       in
       let bnds =
         match v_license with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       let bnds =
         match v_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_profile

[@@@deriving.end]

type workload_autoscaler_profile = {
  keda_enabled : bool prop option; [@option]
  vertical_pod_autoscaler_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_autoscaler_profile) -> ()

let yojson_of_workload_autoscaler_profile =
  (function
   | {
       keda_enabled = v_keda_enabled;
       vertical_pod_autoscaler_enabled =
         v_vertical_pod_autoscaler_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vertical_pod_autoscaler_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vertical_pod_autoscaler_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keda_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "keda_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload_autoscaler_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_autoscaler_profile

[@@@deriving.end]

type kube_admin_config = {
  client_certificate : string prop;
  client_key : string prop;
  cluster_ca_certificate : string prop;
  host : string prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kube_admin_config) -> ()

let yojson_of_kube_admin_config =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       host = v_host;
       password = v_password;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : kube_admin_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kube_admin_config

[@@@deriving.end]

type kube_config = {
  client_certificate : string prop;
  client_key : string prop;
  cluster_ca_certificate : string prop;
  host : string prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kube_config) -> ()

let yojson_of_kube_config =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       host = v_host;
       password = v_password;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : kube_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kube_config

[@@@deriving.end]

type azurerm_kubernetes_cluster = {
  api_server_authorized_ip_ranges : string prop list option;
      [@option]
  automatic_channel_upgrade : string prop option; [@option]
  azure_policy_enabled : bool prop option; [@option]
  custom_ca_trust_certificates_base64 : string prop list option;
      [@option]
  disk_encryption_set_id : string prop option; [@option]
  dns_prefix : string prop option; [@option]
  dns_prefix_private_cluster : string prop option; [@option]
  edge_zone : string prop option; [@option]
  enable_pod_security_policy : bool prop option; [@option]
  http_application_routing_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  image_cleaner_enabled : bool prop option; [@option]
  image_cleaner_interval_hours : float prop option; [@option]
  kubernetes_version : string prop option; [@option]
  local_account_disabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  node_os_channel_upgrade : string prop option; [@option]
  node_resource_group : string prop option; [@option]
  oidc_issuer_enabled : bool prop option; [@option]
  open_service_mesh_enabled : bool prop option; [@option]
  private_cluster_enabled : bool prop option; [@option]
  private_cluster_public_fqdn_enabled : bool prop option; [@option]
  private_dns_zone_id : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  role_based_access_control_enabled : bool prop option; [@option]
  run_command_enabled : bool prop option; [@option]
  sku_tier : string prop option; [@option]
  support_plan : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  workload_identity_enabled : bool prop option; [@option]
  aci_connector_linux : aci_connector_linux list;
  api_server_access_profile : api_server_access_profile list;
  auto_scaler_profile : auto_scaler_profile list;
  azure_active_directory_role_based_access_control :
    azure_active_directory_role_based_access_control list;
  confidential_computing : confidential_computing list;
  default_node_pool : default_node_pool list;
  http_proxy_config : http_proxy_config list;
  identity : identity list;
  ingress_application_gateway : ingress_application_gateway list;
  key_management_service : key_management_service list;
  key_vault_secrets_provider : key_vault_secrets_provider list;
  kubelet_identity : kubelet_identity list;
  linux_profile : linux_profile list;
  maintenance_window : maintenance_window list;
  maintenance_window_auto_upgrade :
    maintenance_window_auto_upgrade list;
  maintenance_window_node_os : maintenance_window_node_os list;
  microsoft_defender : microsoft_defender list;
  monitor_metrics : monitor_metrics list;
  network_profile : network_profile list;
  oms_agent : oms_agent list;
  service_mesh_profile : service_mesh_profile list;
  service_principal : service_principal list;
  storage_profile : storage_profile list;
  timeouts : timeouts option;
  web_app_routing : web_app_routing list;
  windows_profile : windows_profile list;
  workload_autoscaler_profile : workload_autoscaler_profile list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_cluster) -> ()

let yojson_of_azurerm_kubernetes_cluster =
  (function
   | {
       api_server_authorized_ip_ranges =
         v_api_server_authorized_ip_ranges;
       automatic_channel_upgrade = v_automatic_channel_upgrade;
       azure_policy_enabled = v_azure_policy_enabled;
       custom_ca_trust_certificates_base64 =
         v_custom_ca_trust_certificates_base64;
       disk_encryption_set_id = v_disk_encryption_set_id;
       dns_prefix = v_dns_prefix;
       dns_prefix_private_cluster = v_dns_prefix_private_cluster;
       edge_zone = v_edge_zone;
       enable_pod_security_policy = v_enable_pod_security_policy;
       http_application_routing_enabled =
         v_http_application_routing_enabled;
       id = v_id;
       image_cleaner_enabled = v_image_cleaner_enabled;
       image_cleaner_interval_hours = v_image_cleaner_interval_hours;
       kubernetes_version = v_kubernetes_version;
       local_account_disabled = v_local_account_disabled;
       location = v_location;
       name = v_name;
       node_os_channel_upgrade = v_node_os_channel_upgrade;
       node_resource_group = v_node_resource_group;
       oidc_issuer_enabled = v_oidc_issuer_enabled;
       open_service_mesh_enabled = v_open_service_mesh_enabled;
       private_cluster_enabled = v_private_cluster_enabled;
       private_cluster_public_fqdn_enabled =
         v_private_cluster_public_fqdn_enabled;
       private_dns_zone_id = v_private_dns_zone_id;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       role_based_access_control_enabled =
         v_role_based_access_control_enabled;
       run_command_enabled = v_run_command_enabled;
       sku_tier = v_sku_tier;
       support_plan = v_support_plan;
       tags = v_tags;
       workload_identity_enabled = v_workload_identity_enabled;
       aci_connector_linux = v_aci_connector_linux;
       api_server_access_profile = v_api_server_access_profile;
       auto_scaler_profile = v_auto_scaler_profile;
       azure_active_directory_role_based_access_control =
         v_azure_active_directory_role_based_access_control;
       confidential_computing = v_confidential_computing;
       default_node_pool = v_default_node_pool;
       http_proxy_config = v_http_proxy_config;
       identity = v_identity;
       ingress_application_gateway = v_ingress_application_gateway;
       key_management_service = v_key_management_service;
       key_vault_secrets_provider = v_key_vault_secrets_provider;
       kubelet_identity = v_kubelet_identity;
       linux_profile = v_linux_profile;
       maintenance_window = v_maintenance_window;
       maintenance_window_auto_upgrade =
         v_maintenance_window_auto_upgrade;
       maintenance_window_node_os = v_maintenance_window_node_os;
       microsoft_defender = v_microsoft_defender;
       monitor_metrics = v_monitor_metrics;
       network_profile = v_network_profile;
       oms_agent = v_oms_agent;
       service_mesh_profile = v_service_mesh_profile;
       service_principal = v_service_principal;
       storage_profile = v_storage_profile;
       timeouts = v_timeouts;
       web_app_routing = v_web_app_routing;
       windows_profile = v_windows_profile;
       workload_autoscaler_profile = v_workload_autoscaler_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workload_autoscaler_profile
             v_workload_autoscaler_profile
         in
         ("workload_autoscaler_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_windows_profile v_windows_profile
         in
         ("windows_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_web_app_routing v_web_app_routing
         in
         ("web_app_routing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_profile v_storage_profile
         in
         ("storage_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_principal
             v_service_principal
         in
         ("service_principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_mesh_profile
             v_service_mesh_profile
         in
         ("service_mesh_profile", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_oms_agent v_oms_agent in
         ("oms_agent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_profile v_network_profile
         in
         ("network_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_monitor_metrics v_monitor_metrics
         in
         ("monitor_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_microsoft_defender
             v_microsoft_defender
         in
         ("microsoft_defender", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window_node_os
             v_maintenance_window_node_os
         in
         ("maintenance_window_node_os", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window_auto_upgrade
             v_maintenance_window_auto_upgrade
         in
         ("maintenance_window_auto_upgrade", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window
             v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_linux_profile v_linux_profile
         in
         ("linux_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kubelet_identity
             v_kubelet_identity
         in
         ("kubelet_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_key_vault_secrets_provider
             v_key_vault_secrets_provider
         in
         ("key_vault_secrets_provider", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_key_management_service
             v_key_management_service
         in
         ("key_management_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ingress_application_gateway
             v_ingress_application_gateway
         in
         ("ingress_application_gateway", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_proxy_config
             v_http_proxy_config
         in
         ("http_proxy_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_node_pool
             v_default_node_pool
         in
         ("default_node_pool", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_confidential_computing
             v_confidential_computing
         in
         ("confidential_computing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_azure_active_directory_role_based_access_control
             v_azure_active_directory_role_based_access_control
         in
         ("azure_active_directory_role_based_access_control", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_scaler_profile
             v_auto_scaler_profile
         in
         ("auto_scaler_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_api_server_access_profile
             v_api_server_access_profile
         in
         ("api_server_access_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_aci_connector_linux
             v_aci_connector_linux
         in
         ("aci_connector_linux", arg) :: bnds
       in
       let bnds =
         match v_workload_identity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "workload_identity_enabled", arg in
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
         match v_support_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_plan", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_command_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_command_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_based_access_control_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "role_based_access_control_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_dns_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_dns_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_cluster_public_fqdn_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_cluster_public_fqdn_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_cluster_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_cluster_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_open_service_mesh_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "open_service_mesh_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oidc_issuer_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "oidc_issuer_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_resource_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_os_channel_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_os_channel_upgrade", arg in
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
         match v_local_account_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_account_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kubernetes_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kubernetes_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_cleaner_interval_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_cleaner_interval_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_cleaner_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "image_cleaner_enabled", arg in
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
         match v_http_application_routing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http_application_routing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_pod_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pod_security_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_prefix_private_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_prefix_private_cluster", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_ca_trust_certificates_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_ca_trust_certificates_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azure_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azure_policy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_channel_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "automatic_channel_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_server_authorized_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "api_server_authorized_ip_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_cluster

[@@@deriving.end]

let aci_connector_linux ~subnet_name () : aci_connector_linux =
  { subnet_name }

let api_server_access_profile ?authorized_ip_ranges ?subnet_id
    ?vnet_integration_enabled () : api_server_access_profile =
  { authorized_ip_ranges; subnet_id; vnet_integration_enabled }

let auto_scaler_profile ?balance_similar_node_groups
    ?empty_bulk_delete_max ?expander ?max_graceful_termination_sec
    ?max_node_provisioning_time ?max_unready_nodes
    ?max_unready_percentage ?new_pod_scale_up_delay
    ?scale_down_delay_after_add ?scale_down_delay_after_delete
    ?scale_down_delay_after_failure ?scale_down_unneeded
    ?scale_down_unready ?scale_down_utilization_threshold
    ?scan_interval ?skip_nodes_with_local_storage
    ?skip_nodes_with_system_pods () : auto_scaler_profile =
  {
    balance_similar_node_groups;
    empty_bulk_delete_max;
    expander;
    max_graceful_termination_sec;
    max_node_provisioning_time;
    max_unready_nodes;
    max_unready_percentage;
    new_pod_scale_up_delay;
    scale_down_delay_after_add;
    scale_down_delay_after_delete;
    scale_down_delay_after_failure;
    scale_down_unneeded;
    scale_down_unready;
    scale_down_utilization_threshold;
    scan_interval;
    skip_nodes_with_local_storage;
    skip_nodes_with_system_pods;
  }

let azure_active_directory_role_based_access_control
    ?admin_group_object_ids ?azure_rbac_enabled ?client_app_id
    ?managed ?server_app_id ?server_app_secret ?tenant_id () :
    azure_active_directory_role_based_access_control =
  {
    admin_group_object_ids;
    azure_rbac_enabled;
    client_app_id;
    managed;
    server_app_id;
    server_app_secret;
    tenant_id;
  }

let confidential_computing ~sgx_quote_helper_enabled () :
    confidential_computing =
  { sgx_quote_helper_enabled }

let default_node_pool__kubelet_config ?allowed_unsafe_sysctls
    ?container_log_max_line ?container_log_max_size_mb
    ?cpu_cfs_quota_enabled ?cpu_cfs_quota_period ?cpu_manager_policy
    ?image_gc_high_threshold ?image_gc_low_threshold ?pod_max_pid
    ?topology_manager_policy () : default_node_pool__kubelet_config =
  {
    allowed_unsafe_sysctls;
    container_log_max_line;
    container_log_max_size_mb;
    cpu_cfs_quota_enabled;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    image_gc_high_threshold;
    image_gc_low_threshold;
    pod_max_pid;
    topology_manager_policy;
  }

let default_node_pool__linux_os_config__sysctl_config ?fs_aio_max_nr
    ?fs_file_max ?fs_inotify_max_user_watches ?fs_nr_open
    ?kernel_threads_max ?net_core_netdev_max_backlog
    ?net_core_optmem_max ?net_core_rmem_default ?net_core_rmem_max
    ?net_core_somaxconn ?net_core_wmem_default ?net_core_wmem_max
    ?net_ipv4_ip_local_port_range_max
    ?net_ipv4_ip_local_port_range_min
    ?net_ipv4_neigh_default_gc_thresh1
    ?net_ipv4_neigh_default_gc_thresh2
    ?net_ipv4_neigh_default_gc_thresh3 ?net_ipv4_tcp_fin_timeout
    ?net_ipv4_tcp_keepalive_intvl ?net_ipv4_tcp_keepalive_probes
    ?net_ipv4_tcp_keepalive_time ?net_ipv4_tcp_max_syn_backlog
    ?net_ipv4_tcp_max_tw_buckets ?net_ipv4_tcp_tw_reuse
    ?net_netfilter_nf_conntrack_buckets
    ?net_netfilter_nf_conntrack_max ?vm_max_map_count ?vm_swappiness
    ?vm_vfs_cache_pressure () :
    default_node_pool__linux_os_config__sysctl_config =
  {
    fs_aio_max_nr;
    fs_file_max;
    fs_inotify_max_user_watches;
    fs_nr_open;
    kernel_threads_max;
    net_core_netdev_max_backlog;
    net_core_optmem_max;
    net_core_rmem_default;
    net_core_rmem_max;
    net_core_somaxconn;
    net_core_wmem_default;
    net_core_wmem_max;
    net_ipv4_ip_local_port_range_max;
    net_ipv4_ip_local_port_range_min;
    net_ipv4_neigh_default_gc_thresh1;
    net_ipv4_neigh_default_gc_thresh2;
    net_ipv4_neigh_default_gc_thresh3;
    net_ipv4_tcp_fin_timeout;
    net_ipv4_tcp_keepalive_intvl;
    net_ipv4_tcp_keepalive_probes;
    net_ipv4_tcp_keepalive_time;
    net_ipv4_tcp_max_syn_backlog;
    net_ipv4_tcp_max_tw_buckets;
    net_ipv4_tcp_tw_reuse;
    net_netfilter_nf_conntrack_buckets;
    net_netfilter_nf_conntrack_max;
    vm_max_map_count;
    vm_swappiness;
    vm_vfs_cache_pressure;
  }

let default_node_pool__linux_os_config ?swap_file_size_mb
    ?transparent_huge_page_defrag ?transparent_huge_page_enabled
    ?(sysctl_config = []) () : default_node_pool__linux_os_config =
  {
    swap_file_size_mb;
    transparent_huge_page_defrag;
    transparent_huge_page_enabled;
    sysctl_config;
  }

let default_node_pool__node_network_profile__allowed_host_ports
    ?port_end ?port_start ?protocol () :
    default_node_pool__node_network_profile__allowed_host_ports =
  { port_end; port_start; protocol }

let default_node_pool__node_network_profile
    ?application_security_group_ids ?node_public_ip_tags
    ?(allowed_host_ports = []) () :
    default_node_pool__node_network_profile =
  {
    application_security_group_ids;
    node_public_ip_tags;
    allowed_host_ports;
  }

let default_node_pool__upgrade_settings ~max_surge () :
    default_node_pool__upgrade_settings =
  { max_surge }

let default_node_pool ?capacity_reservation_group_id
    ?custom_ca_trust_enabled ?enable_auto_scaling
    ?enable_host_encryption ?enable_node_public_ip ?fips_enabled
    ?gpu_instance ?host_group_id ?kubelet_disk_type ?max_count
    ?max_pods ?message_of_the_day ?min_count ?node_count ?node_labels
    ?node_public_ip_prefix_id ?node_taints
    ?only_critical_addons_enabled ?orchestrator_version
    ?os_disk_size_gb ?os_disk_type ?os_sku ?pod_subnet_id
    ?proximity_placement_group_id ?scale_down_mode ?snapshot_id ?tags
    ?temporary_name_for_rotation ?type_ ?ultra_ssd_enabled
    ?vnet_subnet_id ?workload_runtime ?zones ?(kubelet_config = [])
    ?(linux_os_config = []) ?(node_network_profile = [])
    ?(upgrade_settings = []) ~name ~vm_size () : default_node_pool =
  {
    capacity_reservation_group_id;
    custom_ca_trust_enabled;
    enable_auto_scaling;
    enable_host_encryption;
    enable_node_public_ip;
    fips_enabled;
    gpu_instance;
    host_group_id;
    kubelet_disk_type;
    max_count;
    max_pods;
    message_of_the_day;
    min_count;
    name;
    node_count;
    node_labels;
    node_public_ip_prefix_id;
    node_taints;
    only_critical_addons_enabled;
    orchestrator_version;
    os_disk_size_gb;
    os_disk_type;
    os_sku;
    pod_subnet_id;
    proximity_placement_group_id;
    scale_down_mode;
    snapshot_id;
    tags;
    temporary_name_for_rotation;
    type_;
    ultra_ssd_enabled;
    vm_size;
    vnet_subnet_id;
    workload_runtime;
    zones;
    kubelet_config;
    linux_os_config;
    node_network_profile;
    upgrade_settings;
  }

let http_proxy_config ?http_proxy ?https_proxy ?no_proxy ?trusted_ca
    () : http_proxy_config =
  { http_proxy; https_proxy; no_proxy; trusted_ca }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress_application_gateway ?gateway_id ?gateway_name
    ?subnet_cidr ?subnet_id () : ingress_application_gateway =
  { gateway_id; gateway_name; subnet_cidr; subnet_id }

let key_management_service ?key_vault_network_access
    ~key_vault_key_id () : key_management_service =
  { key_vault_key_id; key_vault_network_access }

let key_vault_secrets_provider ?secret_rotation_enabled
    ?secret_rotation_interval () : key_vault_secrets_provider =
  { secret_rotation_enabled; secret_rotation_interval }

let kubelet_identity ?client_id ?object_id ?user_assigned_identity_id
    () : kubelet_identity =
  { client_id; object_id; user_assigned_identity_id }

let linux_profile__ssh_key ~key_data () : linux_profile__ssh_key =
  { key_data }

let linux_profile ~admin_username ~ssh_key () : linux_profile =
  { admin_username; ssh_key }

let maintenance_window__allowed ~day ~hours () :
    maintenance_window__allowed =
  { day; hours }

let maintenance_window__not_allowed ~end_ ~start () :
    maintenance_window__not_allowed =
  { end_; start }

let maintenance_window ~allowed ~not_allowed () : maintenance_window
    =
  { allowed; not_allowed }

let maintenance_window_auto_upgrade__not_allowed ~end_ ~start () :
    maintenance_window_auto_upgrade__not_allowed =
  { end_; start }

let maintenance_window_auto_upgrade ?day_of_month ?day_of_week
    ?start_date ?start_time ?utc_offset ?week_index ~duration
    ~frequency ~interval ~not_allowed () :
    maintenance_window_auto_upgrade =
  {
    day_of_month;
    day_of_week;
    duration;
    frequency;
    interval;
    start_date;
    start_time;
    utc_offset;
    week_index;
    not_allowed;
  }

let maintenance_window_node_os__not_allowed ~end_ ~start () :
    maintenance_window_node_os__not_allowed =
  { end_; start }

let maintenance_window_node_os ?day_of_month ?day_of_week ?start_date
    ?start_time ?utc_offset ?week_index ~duration ~frequency
    ~interval ~not_allowed () : maintenance_window_node_os =
  {
    day_of_month;
    day_of_week;
    duration;
    frequency;
    interval;
    start_date;
    start_time;
    utc_offset;
    week_index;
    not_allowed;
  }

let microsoft_defender ~log_analytics_workspace_id () :
    microsoft_defender =
  { log_analytics_workspace_id }

let monitor_metrics ?annotations_allowed ?labels_allowed () :
    monitor_metrics =
  { annotations_allowed; labels_allowed }

let network_profile__load_balancer_profile ?idle_timeout_in_minutes
    ?managed_outbound_ip_count ?managed_outbound_ipv6_count
    ?outbound_ip_address_ids ?outbound_ip_prefix_ids
    ?outbound_ports_allocated () :
    network_profile__load_balancer_profile =
  {
    idle_timeout_in_minutes;
    managed_outbound_ip_count;
    managed_outbound_ipv6_count;
    outbound_ip_address_ids;
    outbound_ip_prefix_ids;
    outbound_ports_allocated;
  }

let network_profile__nat_gateway_profile ?idle_timeout_in_minutes
    ?managed_outbound_ip_count () :
    network_profile__nat_gateway_profile =
  { idle_timeout_in_minutes; managed_outbound_ip_count }

let network_profile ?dns_service_ip ?docker_bridge_cidr
    ?ebpf_data_plane ?ip_versions ?load_balancer_sku ?network_mode
    ?network_plugin_mode ?network_policy ?outbound_type ?pod_cidr
    ?pod_cidrs ?service_cidr ?service_cidrs
    ?(load_balancer_profile = []) ?(nat_gateway_profile = [])
    ~network_plugin () : network_profile =
  {
    dns_service_ip;
    docker_bridge_cidr;
    ebpf_data_plane;
    ip_versions;
    load_balancer_sku;
    network_mode;
    network_plugin;
    network_plugin_mode;
    network_policy;
    outbound_type;
    pod_cidr;
    pod_cidrs;
    service_cidr;
    service_cidrs;
    load_balancer_profile;
    nat_gateway_profile;
  }

let oms_agent ?msi_auth_for_monitoring_enabled
    ~log_analytics_workspace_id () : oms_agent =
  { log_analytics_workspace_id; msi_auth_for_monitoring_enabled }

let service_mesh_profile ?external_ingress_gateway_enabled
    ?internal_ingress_gateway_enabled ~mode () : service_mesh_profile
    =
  {
    external_ingress_gateway_enabled;
    internal_ingress_gateway_enabled;
    mode;
  }

let service_principal ~client_id ~client_secret () :
    service_principal =
  { client_id; client_secret }

let storage_profile ?blob_driver_enabled ?disk_driver_enabled
    ?disk_driver_version ?file_driver_enabled
    ?snapshot_controller_enabled () : storage_profile =
  {
    blob_driver_enabled;
    disk_driver_enabled;
    disk_driver_version;
    file_driver_enabled;
    snapshot_controller_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let web_app_routing ~dns_zone_id () : web_app_routing =
  { dns_zone_id }

let windows_profile__gmsa ~dns_server ~root_domain () :
    windows_profile__gmsa =
  { dns_server; root_domain }

let windows_profile ?admin_password ?license ?(gmsa = [])
    ~admin_username () : windows_profile =
  { admin_password; admin_username; license; gmsa }

let workload_autoscaler_profile ?keda_enabled
    ?vertical_pod_autoscaler_enabled () : workload_autoscaler_profile
    =
  { keda_enabled; vertical_pod_autoscaler_enabled }

let azurerm_kubernetes_cluster ?api_server_authorized_ip_ranges
    ?automatic_channel_upgrade ?azure_policy_enabled
    ?custom_ca_trust_certificates_base64 ?disk_encryption_set_id
    ?dns_prefix ?dns_prefix_private_cluster ?edge_zone
    ?enable_pod_security_policy ?http_application_routing_enabled ?id
    ?image_cleaner_enabled ?image_cleaner_interval_hours
    ?kubernetes_version ?local_account_disabled
    ?node_os_channel_upgrade ?node_resource_group
    ?oidc_issuer_enabled ?open_service_mesh_enabled
    ?private_cluster_enabled ?private_cluster_public_fqdn_enabled
    ?private_dns_zone_id ?public_network_access_enabled
    ?role_based_access_control_enabled ?run_command_enabled ?sku_tier
    ?support_plan ?tags ?workload_identity_enabled
    ?(aci_connector_linux = []) ?(api_server_access_profile = [])
    ?(auto_scaler_profile = [])
    ?(azure_active_directory_role_based_access_control = [])
    ?(confidential_computing = []) ?(http_proxy_config = [])
    ?(identity = []) ?(ingress_application_gateway = [])
    ?(key_management_service = []) ?(key_vault_secrets_provider = [])
    ?(kubelet_identity = []) ?(linux_profile = [])
    ?(maintenance_window = [])
    ?(maintenance_window_auto_upgrade = [])
    ?(maintenance_window_node_os = []) ?(microsoft_defender = [])
    ?(monitor_metrics = []) ?(network_profile = []) ?(oms_agent = [])
    ?(service_mesh_profile = []) ?(service_principal = [])
    ?(storage_profile = []) ?timeouts ?(web_app_routing = [])
    ?(windows_profile = []) ?(workload_autoscaler_profile = [])
    ~location ~name ~resource_group_name ~default_node_pool () :
    azurerm_kubernetes_cluster =
  {
    api_server_authorized_ip_ranges;
    automatic_channel_upgrade;
    azure_policy_enabled;
    custom_ca_trust_certificates_base64;
    disk_encryption_set_id;
    dns_prefix;
    dns_prefix_private_cluster;
    edge_zone;
    enable_pod_security_policy;
    http_application_routing_enabled;
    id;
    image_cleaner_enabled;
    image_cleaner_interval_hours;
    kubernetes_version;
    local_account_disabled;
    location;
    name;
    node_os_channel_upgrade;
    node_resource_group;
    oidc_issuer_enabled;
    open_service_mesh_enabled;
    private_cluster_enabled;
    private_cluster_public_fqdn_enabled;
    private_dns_zone_id;
    public_network_access_enabled;
    resource_group_name;
    role_based_access_control_enabled;
    run_command_enabled;
    sku_tier;
    support_plan;
    tags;
    workload_identity_enabled;
    aci_connector_linux;
    api_server_access_profile;
    auto_scaler_profile;
    azure_active_directory_role_based_access_control;
    confidential_computing;
    default_node_pool;
    http_proxy_config;
    identity;
    ingress_application_gateway;
    key_management_service;
    key_vault_secrets_provider;
    kubelet_identity;
    linux_profile;
    maintenance_window;
    maintenance_window_auto_upgrade;
    maintenance_window_node_os;
    microsoft_defender;
    monitor_metrics;
    network_profile;
    oms_agent;
    service_mesh_profile;
    service_principal;
    storage_profile;
    timeouts;
    web_app_routing;
    windows_profile;
    workload_autoscaler_profile;
  }

type t = {
  tf_name : string;
  api_server_authorized_ip_ranges : string list prop;
  automatic_channel_upgrade : string prop;
  azure_policy_enabled : bool prop;
  current_kubernetes_version : string prop;
  custom_ca_trust_certificates_base64 : string list prop;
  disk_encryption_set_id : string prop;
  dns_prefix : string prop;
  dns_prefix_private_cluster : string prop;
  edge_zone : string prop;
  enable_pod_security_policy : bool prop;
  fqdn : string prop;
  http_application_routing_enabled : bool prop;
  http_application_routing_zone_name : string prop;
  id : string prop;
  image_cleaner_enabled : bool prop;
  image_cleaner_interval_hours : float prop;
  kube_admin_config : kube_admin_config list prop;
  kube_admin_config_raw : string prop;
  kube_config : kube_config list prop;
  kube_config_raw : string prop;
  kubernetes_version : string prop;
  local_account_disabled : bool prop;
  location : string prop;
  name : string prop;
  node_os_channel_upgrade : string prop;
  node_resource_group : string prop;
  node_resource_group_id : string prop;
  oidc_issuer_enabled : bool prop;
  oidc_issuer_url : string prop;
  open_service_mesh_enabled : bool prop;
  portal_fqdn : string prop;
  private_cluster_enabled : bool prop;
  private_cluster_public_fqdn_enabled : bool prop;
  private_dns_zone_id : string prop;
  private_fqdn : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  role_based_access_control_enabled : bool prop;
  run_command_enabled : bool prop;
  sku_tier : string prop;
  support_plan : string prop;
  tags : (string * string) list prop;
  workload_identity_enabled : bool prop;
}

let make ?api_server_authorized_ip_ranges ?automatic_channel_upgrade
    ?azure_policy_enabled ?custom_ca_trust_certificates_base64
    ?disk_encryption_set_id ?dns_prefix ?dns_prefix_private_cluster
    ?edge_zone ?enable_pod_security_policy
    ?http_application_routing_enabled ?id ?image_cleaner_enabled
    ?image_cleaner_interval_hours ?kubernetes_version
    ?local_account_disabled ?node_os_channel_upgrade
    ?node_resource_group ?oidc_issuer_enabled
    ?open_service_mesh_enabled ?private_cluster_enabled
    ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
    ?public_network_access_enabled ?role_based_access_control_enabled
    ?run_command_enabled ?sku_tier ?support_plan ?tags
    ?workload_identity_enabled ?(aci_connector_linux = [])
    ?(api_server_access_profile = []) ?(auto_scaler_profile = [])
    ?(azure_active_directory_role_based_access_control = [])
    ?(confidential_computing = []) ?(http_proxy_config = [])
    ?(identity = []) ?(ingress_application_gateway = [])
    ?(key_management_service = []) ?(key_vault_secrets_provider = [])
    ?(kubelet_identity = []) ?(linux_profile = [])
    ?(maintenance_window = [])
    ?(maintenance_window_auto_upgrade = [])
    ?(maintenance_window_node_os = []) ?(microsoft_defender = [])
    ?(monitor_metrics = []) ?(network_profile = []) ?(oms_agent = [])
    ?(service_mesh_profile = []) ?(service_principal = [])
    ?(storage_profile = []) ?timeouts ?(web_app_routing = [])
    ?(windows_profile = []) ?(workload_autoscaler_profile = [])
    ~location ~name ~resource_group_name ~default_node_pool __id =
  let __type = "azurerm_kubernetes_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       api_server_authorized_ip_ranges =
         Prop.computed __type __id "api_server_authorized_ip_ranges";
       automatic_channel_upgrade =
         Prop.computed __type __id "automatic_channel_upgrade";
       azure_policy_enabled =
         Prop.computed __type __id "azure_policy_enabled";
       current_kubernetes_version =
         Prop.computed __type __id "current_kubernetes_version";
       custom_ca_trust_certificates_base64 =
         Prop.computed __type __id
           "custom_ca_trust_certificates_base64";
       disk_encryption_set_id =
         Prop.computed __type __id "disk_encryption_set_id";
       dns_prefix = Prop.computed __type __id "dns_prefix";
       dns_prefix_private_cluster =
         Prop.computed __type __id "dns_prefix_private_cluster";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_pod_security_policy =
         Prop.computed __type __id "enable_pod_security_policy";
       fqdn = Prop.computed __type __id "fqdn";
       http_application_routing_enabled =
         Prop.computed __type __id "http_application_routing_enabled";
       http_application_routing_zone_name =
         Prop.computed __type __id
           "http_application_routing_zone_name";
       id = Prop.computed __type __id "id";
       image_cleaner_enabled =
         Prop.computed __type __id "image_cleaner_enabled";
       image_cleaner_interval_hours =
         Prop.computed __type __id "image_cleaner_interval_hours";
       kube_admin_config =
         Prop.computed __type __id "kube_admin_config";
       kube_admin_config_raw =
         Prop.computed __type __id "kube_admin_config_raw";
       kube_config = Prop.computed __type __id "kube_config";
       kube_config_raw = Prop.computed __type __id "kube_config_raw";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       local_account_disabled =
         Prop.computed __type __id "local_account_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       node_os_channel_upgrade =
         Prop.computed __type __id "node_os_channel_upgrade";
       node_resource_group =
         Prop.computed __type __id "node_resource_group";
       node_resource_group_id =
         Prop.computed __type __id "node_resource_group_id";
       oidc_issuer_enabled =
         Prop.computed __type __id "oidc_issuer_enabled";
       oidc_issuer_url = Prop.computed __type __id "oidc_issuer_url";
       open_service_mesh_enabled =
         Prop.computed __type __id "open_service_mesh_enabled";
       portal_fqdn = Prop.computed __type __id "portal_fqdn";
       private_cluster_enabled =
         Prop.computed __type __id "private_cluster_enabled";
       private_cluster_public_fqdn_enabled =
         Prop.computed __type __id
           "private_cluster_public_fqdn_enabled";
       private_dns_zone_id =
         Prop.computed __type __id "private_dns_zone_id";
       private_fqdn = Prop.computed __type __id "private_fqdn";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_based_access_control_enabled =
         Prop.computed __type __id
           "role_based_access_control_enabled";
       run_command_enabled =
         Prop.computed __type __id "run_command_enabled";
       sku_tier = Prop.computed __type __id "sku_tier";
       support_plan = Prop.computed __type __id "support_plan";
       tags = Prop.computed __type __id "tags";
       workload_identity_enabled =
         Prop.computed __type __id "workload_identity_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster
        (azurerm_kubernetes_cluster ?api_server_authorized_ip_ranges
           ?automatic_channel_upgrade ?azure_policy_enabled
           ?custom_ca_trust_certificates_base64
           ?disk_encryption_set_id ?dns_prefix
           ?dns_prefix_private_cluster ?edge_zone
           ?enable_pod_security_policy
           ?http_application_routing_enabled ?id
           ?image_cleaner_enabled ?image_cleaner_interval_hours
           ?kubernetes_version ?local_account_disabled
           ?node_os_channel_upgrade ?node_resource_group
           ?oidc_issuer_enabled ?open_service_mesh_enabled
           ?private_cluster_enabled
           ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
           ?public_network_access_enabled
           ?role_based_access_control_enabled ?run_command_enabled
           ?sku_tier ?support_plan ?tags ?workload_identity_enabled
           ~aci_connector_linux ~api_server_access_profile
           ~auto_scaler_profile
           ~azure_active_directory_role_based_access_control
           ~confidential_computing ~http_proxy_config ~identity
           ~ingress_application_gateway ~key_management_service
           ~key_vault_secrets_provider ~kubelet_identity
           ~linux_profile ~maintenance_window
           ~maintenance_window_auto_upgrade
           ~maintenance_window_node_os ~microsoft_defender
           ~monitor_metrics ~network_profile ~oms_agent
           ~service_mesh_profile ~service_principal ~storage_profile
           ?timeouts ~web_app_routing ~windows_profile
           ~workload_autoscaler_profile ~location ~name
           ~resource_group_name ~default_node_pool ());
    attrs = __attrs;
  }

let register ?tf_module ?api_server_authorized_ip_ranges
    ?automatic_channel_upgrade ?azure_policy_enabled
    ?custom_ca_trust_certificates_base64 ?disk_encryption_set_id
    ?dns_prefix ?dns_prefix_private_cluster ?edge_zone
    ?enable_pod_security_policy ?http_application_routing_enabled ?id
    ?image_cleaner_enabled ?image_cleaner_interval_hours
    ?kubernetes_version ?local_account_disabled
    ?node_os_channel_upgrade ?node_resource_group
    ?oidc_issuer_enabled ?open_service_mesh_enabled
    ?private_cluster_enabled ?private_cluster_public_fqdn_enabled
    ?private_dns_zone_id ?public_network_access_enabled
    ?role_based_access_control_enabled ?run_command_enabled ?sku_tier
    ?support_plan ?tags ?workload_identity_enabled
    ?(aci_connector_linux = []) ?(api_server_access_profile = [])
    ?(auto_scaler_profile = [])
    ?(azure_active_directory_role_based_access_control = [])
    ?(confidential_computing = []) ?(http_proxy_config = [])
    ?(identity = []) ?(ingress_application_gateway = [])
    ?(key_management_service = []) ?(key_vault_secrets_provider = [])
    ?(kubelet_identity = []) ?(linux_profile = [])
    ?(maintenance_window = [])
    ?(maintenance_window_auto_upgrade = [])
    ?(maintenance_window_node_os = []) ?(microsoft_defender = [])
    ?(monitor_metrics = []) ?(network_profile = []) ?(oms_agent = [])
    ?(service_mesh_profile = []) ?(service_principal = [])
    ?(storage_profile = []) ?timeouts ?(web_app_routing = [])
    ?(windows_profile = []) ?(workload_autoscaler_profile = [])
    ~location ~name ~resource_group_name ~default_node_pool __id =
  let (r : _ Tf_core.resource) =
    make ?api_server_authorized_ip_ranges ?automatic_channel_upgrade
      ?azure_policy_enabled ?custom_ca_trust_certificates_base64
      ?disk_encryption_set_id ?dns_prefix ?dns_prefix_private_cluster
      ?edge_zone ?enable_pod_security_policy
      ?http_application_routing_enabled ?id ?image_cleaner_enabled
      ?image_cleaner_interval_hours ?kubernetes_version
      ?local_account_disabled ?node_os_channel_upgrade
      ?node_resource_group ?oidc_issuer_enabled
      ?open_service_mesh_enabled ?private_cluster_enabled
      ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
      ?public_network_access_enabled
      ?role_based_access_control_enabled ?run_command_enabled
      ?sku_tier ?support_plan ?tags ?workload_identity_enabled
      ~aci_connector_linux ~api_server_access_profile
      ~auto_scaler_profile
      ~azure_active_directory_role_based_access_control
      ~confidential_computing ~http_proxy_config ~identity
      ~ingress_application_gateway ~key_management_service
      ~key_vault_secrets_provider ~kubelet_identity ~linux_profile
      ~maintenance_window ~maintenance_window_auto_upgrade
      ~maintenance_window_node_os ~microsoft_defender
      ~monitor_metrics ~network_profile ~oms_agent
      ~service_mesh_profile ~service_principal ~storage_profile
      ?timeouts ~web_app_routing ~windows_profile
      ~workload_autoscaler_profile ~location ~name
      ~resource_group_name ~default_node_pool __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

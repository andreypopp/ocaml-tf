(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_cluster_node_pool__kubelet_config = {
  allowed_unsafe_sysctls : string list option; [@option]
      (** allowed_unsafe_sysctls *)
  container_log_max_line : float option; [@option]
      (** container_log_max_line *)
  container_log_max_size_mb : float option; [@option]
      (** container_log_max_size_mb *)
  cpu_cfs_quota_enabled : bool option; [@option]
      (** cpu_cfs_quota_enabled *)
  cpu_cfs_quota_period : string option; [@option]
      (** cpu_cfs_quota_period *)
  cpu_manager_policy : string option; [@option]
      (** cpu_manager_policy *)
  image_gc_high_threshold : float option; [@option]
      (** image_gc_high_threshold *)
  image_gc_low_threshold : float option; [@option]
      (** image_gc_low_threshold *)
  pod_max_pid : float option; [@option]  (** pod_max_pid *)
  topology_manager_policy : string option; [@option]
      (** topology_manager_policy *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__kubelet_config *)

type azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config = {
  fs_aio_max_nr : float option; [@option]  (** fs_aio_max_nr *)
  fs_file_max : float option; [@option]  (** fs_file_max *)
  fs_inotify_max_user_watches : float option; [@option]
      (** fs_inotify_max_user_watches *)
  fs_nr_open : float option; [@option]  (** fs_nr_open *)
  kernel_threads_max : float option; [@option]
      (** kernel_threads_max *)
  net_core_netdev_max_backlog : float option; [@option]
      (** net_core_netdev_max_backlog *)
  net_core_optmem_max : float option; [@option]
      (** net_core_optmem_max *)
  net_core_rmem_default : float option; [@option]
      (** net_core_rmem_default *)
  net_core_rmem_max : float option; [@option]
      (** net_core_rmem_max *)
  net_core_somaxconn : float option; [@option]
      (** net_core_somaxconn *)
  net_core_wmem_default : float option; [@option]
      (** net_core_wmem_default *)
  net_core_wmem_max : float option; [@option]
      (** net_core_wmem_max *)
  net_ipv4_ip_local_port_range_max : float option; [@option]
      (** net_ipv4_ip_local_port_range_max *)
  net_ipv4_ip_local_port_range_min : float option; [@option]
      (** net_ipv4_ip_local_port_range_min *)
  net_ipv4_neigh_default_gc_thresh1 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh1 *)
  net_ipv4_neigh_default_gc_thresh2 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh2 *)
  net_ipv4_neigh_default_gc_thresh3 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh3 *)
  net_ipv4_tcp_fin_timeout : float option; [@option]
      (** net_ipv4_tcp_fin_timeout *)
  net_ipv4_tcp_keepalive_intvl : float option; [@option]
      (** net_ipv4_tcp_keepalive_intvl *)
  net_ipv4_tcp_keepalive_probes : float option; [@option]
      (** net_ipv4_tcp_keepalive_probes *)
  net_ipv4_tcp_keepalive_time : float option; [@option]
      (** net_ipv4_tcp_keepalive_time *)
  net_ipv4_tcp_max_syn_backlog : float option; [@option]
      (** net_ipv4_tcp_max_syn_backlog *)
  net_ipv4_tcp_max_tw_buckets : float option; [@option]
      (** net_ipv4_tcp_max_tw_buckets *)
  net_ipv4_tcp_tw_reuse : bool option; [@option]
      (** net_ipv4_tcp_tw_reuse *)
  net_netfilter_nf_conntrack_buckets : float option; [@option]
      (** net_netfilter_nf_conntrack_buckets *)
  net_netfilter_nf_conntrack_max : float option; [@option]
      (** net_netfilter_nf_conntrack_max *)
  vm_max_map_count : float option; [@option]  (** vm_max_map_count *)
  vm_swappiness : float option; [@option]  (** vm_swappiness *)
  vm_vfs_cache_pressure : float option; [@option]
      (** vm_vfs_cache_pressure *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config *)

type azurerm_kubernetes_cluster_node_pool__linux_os_config = {
  swap_file_size_mb : float option; [@option]
      (** swap_file_size_mb *)
  transparent_huge_page_defrag : string option; [@option]
      (** transparent_huge_page_defrag *)
  transparent_huge_page_enabled : string option; [@option]
      (** transparent_huge_page_enabled *)
  sysctl_config :
    azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__linux_os_config *)

type azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports = {
  port_end : float option; [@option]  (** port_end *)
  port_start : float option; [@option]  (** port_start *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports *)

type azurerm_kubernetes_cluster_node_pool__node_network_profile = {
  application_security_group_ids : string list option; [@option]
      (** application_security_group_ids *)
  node_public_ip_tags : (string * string) list option; [@option]
      (** node_public_ip_tags *)
  allowed_host_ports :
    azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__node_network_profile *)

type azurerm_kubernetes_cluster_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__timeouts *)

type azurerm_kubernetes_cluster_node_pool__upgrade_settings = {
  max_surge : string;  (** max_surge *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__upgrade_settings *)

type azurerm_kubernetes_cluster_node_pool__windows_profile = {
  outbound_nat_enabled : bool option; [@option]
      (** outbound_nat_enabled *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__windows_profile *)

type azurerm_kubernetes_cluster_node_pool = {
  capacity_reservation_group_id : string option; [@option]
      (** capacity_reservation_group_id *)
  custom_ca_trust_enabled : bool option; [@option]
      (** custom_ca_trust_enabled *)
  enable_auto_scaling : bool option; [@option]
      (** enable_auto_scaling *)
  enable_host_encryption : bool option; [@option]
      (** enable_host_encryption *)
  enable_node_public_ip : bool option; [@option]
      (** enable_node_public_ip *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  fips_enabled : bool option; [@option]  (** fips_enabled *)
  gpu_instance : string option; [@option]  (** gpu_instance *)
  host_group_id : string option; [@option]  (** host_group_id *)
  kubernetes_cluster_id : string;  (** kubernetes_cluster_id *)
  max_count : float option; [@option]  (** max_count *)
  message_of_the_day : string option; [@option]
      (** message_of_the_day *)
  min_count : float option; [@option]  (** min_count *)
  mode : string option; [@option]  (** mode *)
  name : string;  (** name *)
  node_public_ip_prefix_id : string option; [@option]
      (** node_public_ip_prefix_id *)
  node_taints : string list option; [@option]  (** node_taints *)
  os_disk_type : string option; [@option]  (** os_disk_type *)
  os_type : string option; [@option]  (** os_type *)
  pod_subnet_id : string option; [@option]  (** pod_subnet_id *)
  priority : string option; [@option]  (** priority *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  scale_down_mode : string option; [@option]  (** scale_down_mode *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  spot_max_price : float option; [@option]  (** spot_max_price *)
  tags : (string * string) list option; [@option]  (** tags *)
  ultra_ssd_enabled : bool option; [@option]
      (** ultra_ssd_enabled *)
  vm_size : string;  (** vm_size *)
  vnet_subnet_id : string option; [@option]  (** vnet_subnet_id *)
  workload_runtime : string option; [@option]
      (** workload_runtime *)
  zones : string list option; [@option]  (** zones *)
  kubelet_config :
    azurerm_kubernetes_cluster_node_pool__kubelet_config list;
  linux_os_config :
    azurerm_kubernetes_cluster_node_pool__linux_os_config list;
  node_network_profile :
    azurerm_kubernetes_cluster_node_pool__node_network_profile list;
  timeouts : azurerm_kubernetes_cluster_node_pool__timeouts option;
  upgrade_settings :
    azurerm_kubernetes_cluster_node_pool__upgrade_settings list;
  windows_profile :
    azurerm_kubernetes_cluster_node_pool__windows_profile list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool *)

let azurerm_kubernetes_cluster_node_pool
    ?capacity_reservation_group_id ?custom_ca_trust_enabled
    ?enable_auto_scaling ?enable_host_encryption
    ?enable_node_public_ip ?eviction_policy ?fips_enabled
    ?gpu_instance ?host_group_id ?max_count ?message_of_the_day
    ?min_count ?mode ?node_public_ip_prefix_id ?node_taints
    ?os_disk_type ?os_type ?pod_subnet_id ?priority
    ?proximity_placement_group_id ?scale_down_mode ?snapshot_id
    ?spot_max_price ?tags ?ultra_ssd_enabled ?vnet_subnet_id
    ?workload_runtime ?zones ?timeouts ~kubernetes_cluster_id ~name
    ~vm_size ~kubelet_config ~linux_os_config ~node_network_profile
    ~upgrade_settings ~windows_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_cluster_node_pool" in
  let __resource =
    {
      capacity_reservation_group_id;
      custom_ca_trust_enabled;
      enable_auto_scaling;
      enable_host_encryption;
      enable_node_public_ip;
      eviction_policy;
      fips_enabled;
      gpu_instance;
      host_group_id;
      kubernetes_cluster_id;
      max_count;
      message_of_the_day;
      min_count;
      mode;
      name;
      node_public_ip_prefix_id;
      node_taints;
      os_disk_type;
      os_type;
      pod_subnet_id;
      priority;
      proximity_placement_group_id;
      scale_down_mode;
      snapshot_id;
      spot_max_price;
      tags;
      ultra_ssd_enabled;
      vm_size;
      vnet_subnet_id;
      workload_runtime;
      zones;
      kubelet_config;
      linux_os_config;
      node_network_profile;
      timeouts;
      upgrade_settings;
      windows_profile;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster_node_pool __resource);
  ()

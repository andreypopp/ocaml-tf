(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type kubelet_config

val kubelet_config :
  ?allowed_unsafe_sysctls:string prop list ->
  ?container_log_max_line:float prop ->
  ?container_log_max_size_mb:float prop ->
  ?cpu_cfs_quota_enabled:bool prop ->
  ?cpu_cfs_quota_period:string prop ->
  ?cpu_manager_policy:string prop ->
  ?image_gc_high_threshold:float prop ->
  ?image_gc_low_threshold:float prop ->
  ?pod_max_pid:float prop ->
  ?topology_manager_policy:string prop ->
  unit ->
  kubelet_config

type linux_os_config__sysctl_config

val linux_os_config__sysctl_config :
  ?fs_aio_max_nr:float prop ->
  ?fs_file_max:float prop ->
  ?fs_inotify_max_user_watches:float prop ->
  ?fs_nr_open:float prop ->
  ?kernel_threads_max:float prop ->
  ?net_core_netdev_max_backlog:float prop ->
  ?net_core_optmem_max:float prop ->
  ?net_core_rmem_default:float prop ->
  ?net_core_rmem_max:float prop ->
  ?net_core_somaxconn:float prop ->
  ?net_core_wmem_default:float prop ->
  ?net_core_wmem_max:float prop ->
  ?net_ipv4_ip_local_port_range_max:float prop ->
  ?net_ipv4_ip_local_port_range_min:float prop ->
  ?net_ipv4_neigh_default_gc_thresh1:float prop ->
  ?net_ipv4_neigh_default_gc_thresh2:float prop ->
  ?net_ipv4_neigh_default_gc_thresh3:float prop ->
  ?net_ipv4_tcp_fin_timeout:float prop ->
  ?net_ipv4_tcp_keepalive_intvl:float prop ->
  ?net_ipv4_tcp_keepalive_probes:float prop ->
  ?net_ipv4_tcp_keepalive_time:float prop ->
  ?net_ipv4_tcp_max_syn_backlog:float prop ->
  ?net_ipv4_tcp_max_tw_buckets:float prop ->
  ?net_ipv4_tcp_tw_reuse:bool prop ->
  ?net_netfilter_nf_conntrack_buckets:float prop ->
  ?net_netfilter_nf_conntrack_max:float prop ->
  ?vm_max_map_count:float prop ->
  ?vm_swappiness:float prop ->
  ?vm_vfs_cache_pressure:float prop ->
  unit ->
  linux_os_config__sysctl_config

type linux_os_config

val linux_os_config :
  ?swap_file_size_mb:float prop ->
  ?transparent_huge_page_defrag:string prop ->
  ?transparent_huge_page_enabled:string prop ->
  sysctl_config:linux_os_config__sysctl_config list ->
  unit ->
  linux_os_config

type node_network_profile__allowed_host_ports

val node_network_profile__allowed_host_ports :
  ?port_end:float prop ->
  ?port_start:float prop ->
  ?protocol:string prop ->
  unit ->
  node_network_profile__allowed_host_ports

type node_network_profile

val node_network_profile :
  ?application_security_group_ids:string prop list ->
  ?node_public_ip_tags:(string * string prop) list ->
  allowed_host_ports:node_network_profile__allowed_host_ports list ->
  unit ->
  node_network_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type upgrade_settings

val upgrade_settings :
  max_surge:string prop -> unit -> upgrade_settings

type windows_profile

val windows_profile :
  ?outbound_nat_enabled:bool prop -> unit -> windows_profile

type azurerm_kubernetes_cluster_node_pool

val azurerm_kubernetes_cluster_node_pool :
  ?capacity_reservation_group_id:string prop ->
  ?custom_ca_trust_enabled:bool prop ->
  ?enable_auto_scaling:bool prop ->
  ?enable_host_encryption:bool prop ->
  ?enable_node_public_ip:bool prop ->
  ?eviction_policy:string prop ->
  ?fips_enabled:bool prop ->
  ?gpu_instance:string prop ->
  ?host_group_id:string prop ->
  ?id:string prop ->
  ?kubelet_disk_type:string prop ->
  ?max_count:float prop ->
  ?max_pods:float prop ->
  ?message_of_the_day:string prop ->
  ?min_count:float prop ->
  ?mode:string prop ->
  ?node_count:float prop ->
  ?node_labels:(string * string prop) list ->
  ?node_public_ip_prefix_id:string prop ->
  ?node_taints:string prop list ->
  ?orchestrator_version:string prop ->
  ?os_disk_size_gb:float prop ->
  ?os_disk_type:string prop ->
  ?os_sku:string prop ->
  ?os_type:string prop ->
  ?pod_subnet_id:string prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_down_mode:string prop ->
  ?snapshot_id:string prop ->
  ?spot_max_price:float prop ->
  ?tags:(string * string prop) list ->
  ?ultra_ssd_enabled:bool prop ->
  ?vnet_subnet_id:string prop ->
  ?workload_runtime:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  vm_size:string prop ->
  kubelet_config:kubelet_config list ->
  linux_os_config:linux_os_config list ->
  node_network_profile:node_network_profile list ->
  upgrade_settings:upgrade_settings list ->
  windows_profile:windows_profile list ->
  unit ->
  azurerm_kubernetes_cluster_node_pool

val yojson_of_azurerm_kubernetes_cluster_node_pool :
  azurerm_kubernetes_cluster_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capacity_reservation_group_id : string prop;
  custom_ca_trust_enabled : bool prop;
  enable_auto_scaling : bool prop;
  enable_host_encryption : bool prop;
  enable_node_public_ip : bool prop;
  eviction_policy : string prop;
  fips_enabled : bool prop;
  gpu_instance : string prop;
  host_group_id : string prop;
  id : string prop;
  kubelet_disk_type : string prop;
  kubernetes_cluster_id : string prop;
  max_count : float prop;
  max_pods : float prop;
  message_of_the_day : string prop;
  min_count : float prop;
  mode : string prop;
  name : string prop;
  node_count : float prop;
  node_labels : (string * string) list prop;
  node_public_ip_prefix_id : string prop;
  node_taints : string list prop;
  orchestrator_version : string prop;
  os_disk_size_gb : float prop;
  os_disk_type : string prop;
  os_sku : string prop;
  os_type : string prop;
  pod_subnet_id : string prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  scale_down_mode : string prop;
  snapshot_id : string prop;
  spot_max_price : float prop;
  tags : (string * string) list prop;
  ultra_ssd_enabled : bool prop;
  vm_size : string prop;
  vnet_subnet_id : string prop;
  workload_runtime : string prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?capacity_reservation_group_id:string prop ->
  ?custom_ca_trust_enabled:bool prop ->
  ?enable_auto_scaling:bool prop ->
  ?enable_host_encryption:bool prop ->
  ?enable_node_public_ip:bool prop ->
  ?eviction_policy:string prop ->
  ?fips_enabled:bool prop ->
  ?gpu_instance:string prop ->
  ?host_group_id:string prop ->
  ?id:string prop ->
  ?kubelet_disk_type:string prop ->
  ?max_count:float prop ->
  ?max_pods:float prop ->
  ?message_of_the_day:string prop ->
  ?min_count:float prop ->
  ?mode:string prop ->
  ?node_count:float prop ->
  ?node_labels:(string * string prop) list ->
  ?node_public_ip_prefix_id:string prop ->
  ?node_taints:string prop list ->
  ?orchestrator_version:string prop ->
  ?os_disk_size_gb:float prop ->
  ?os_disk_type:string prop ->
  ?os_sku:string prop ->
  ?os_type:string prop ->
  ?pod_subnet_id:string prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_down_mode:string prop ->
  ?snapshot_id:string prop ->
  ?spot_max_price:float prop ->
  ?tags:(string * string prop) list ->
  ?ultra_ssd_enabled:bool prop ->
  ?vnet_subnet_id:string prop ->
  ?workload_runtime:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  vm_size:string prop ->
  kubelet_config:kubelet_config list ->
  linux_os_config:linux_os_config list ->
  node_network_profile:node_network_profile list ->
  upgrade_settings:upgrade_settings list ->
  windows_profile:windows_profile list ->
  string ->
  t

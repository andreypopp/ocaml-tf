(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_cluster_node_pool__kubelet_config = {
  allowed_unsafe_sysctls : string prop list option; [@option]
      (** allowed_unsafe_sysctls *)
  container_log_max_line : float prop option; [@option]
      (** container_log_max_line *)
  container_log_max_size_mb : float prop option; [@option]
      (** container_log_max_size_mb *)
  cpu_cfs_quota_enabled : bool prop option; [@option]
      (** cpu_cfs_quota_enabled *)
  cpu_cfs_quota_period : string prop option; [@option]
      (** cpu_cfs_quota_period *)
  cpu_manager_policy : string prop option; [@option]
      (** cpu_manager_policy *)
  image_gc_high_threshold : float prop option; [@option]
      (** image_gc_high_threshold *)
  image_gc_low_threshold : float prop option; [@option]
      (** image_gc_low_threshold *)
  pod_max_pid : float prop option; [@option]  (** pod_max_pid *)
  topology_manager_policy : string prop option; [@option]
      (** topology_manager_policy *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__kubelet_config *)

type azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config = {
  fs_aio_max_nr : float prop option; [@option]  (** fs_aio_max_nr *)
  fs_file_max : float prop option; [@option]  (** fs_file_max *)
  fs_inotify_max_user_watches : float prop option; [@option]
      (** fs_inotify_max_user_watches *)
  fs_nr_open : float prop option; [@option]  (** fs_nr_open *)
  kernel_threads_max : float prop option; [@option]
      (** kernel_threads_max *)
  net_core_netdev_max_backlog : float prop option; [@option]
      (** net_core_netdev_max_backlog *)
  net_core_optmem_max : float prop option; [@option]
      (** net_core_optmem_max *)
  net_core_rmem_default : float prop option; [@option]
      (** net_core_rmem_default *)
  net_core_rmem_max : float prop option; [@option]
      (** net_core_rmem_max *)
  net_core_somaxconn : float prop option; [@option]
      (** net_core_somaxconn *)
  net_core_wmem_default : float prop option; [@option]
      (** net_core_wmem_default *)
  net_core_wmem_max : float prop option; [@option]
      (** net_core_wmem_max *)
  net_ipv4_ip_local_port_range_max : float prop option; [@option]
      (** net_ipv4_ip_local_port_range_max *)
  net_ipv4_ip_local_port_range_min : float prop option; [@option]
      (** net_ipv4_ip_local_port_range_min *)
  net_ipv4_neigh_default_gc_thresh1 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh1 *)
  net_ipv4_neigh_default_gc_thresh2 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh2 *)
  net_ipv4_neigh_default_gc_thresh3 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh3 *)
  net_ipv4_tcp_fin_timeout : float prop option; [@option]
      (** net_ipv4_tcp_fin_timeout *)
  net_ipv4_tcp_keepalive_intvl : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_intvl *)
  net_ipv4_tcp_keepalive_probes : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_probes *)
  net_ipv4_tcp_keepalive_time : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_time *)
  net_ipv4_tcp_max_syn_backlog : float prop option; [@option]
      (** net_ipv4_tcp_max_syn_backlog *)
  net_ipv4_tcp_max_tw_buckets : float prop option; [@option]
      (** net_ipv4_tcp_max_tw_buckets *)
  net_ipv4_tcp_tw_reuse : bool prop option; [@option]
      (** net_ipv4_tcp_tw_reuse *)
  net_netfilter_nf_conntrack_buckets : float prop option; [@option]
      (** net_netfilter_nf_conntrack_buckets *)
  net_netfilter_nf_conntrack_max : float prop option; [@option]
      (** net_netfilter_nf_conntrack_max *)
  vm_max_map_count : float prop option; [@option]
      (** vm_max_map_count *)
  vm_swappiness : float prop option; [@option]  (** vm_swappiness *)
  vm_vfs_cache_pressure : float prop option; [@option]
      (** vm_vfs_cache_pressure *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config *)

type azurerm_kubernetes_cluster_node_pool__linux_os_config = {
  swap_file_size_mb : float prop option; [@option]
      (** swap_file_size_mb *)
  transparent_huge_page_defrag : string prop option; [@option]
      (** transparent_huge_page_defrag *)
  transparent_huge_page_enabled : string prop option; [@option]
      (** transparent_huge_page_enabled *)
  sysctl_config :
    azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__linux_os_config *)

type azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports = {
  port_end : float prop option; [@option]  (** port_end *)
  port_start : float prop option; [@option]  (** port_start *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports *)

type azurerm_kubernetes_cluster_node_pool__node_network_profile = {
  application_security_group_ids : string prop list option; [@option]
      (** application_security_group_ids *)
  node_public_ip_tags : (string * string prop) list option; [@option]
      (** node_public_ip_tags *)
  allowed_host_ports :
    azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__node_network_profile *)

type azurerm_kubernetes_cluster_node_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__timeouts *)

type azurerm_kubernetes_cluster_node_pool__upgrade_settings = {
  max_surge : string prop;  (** max_surge *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__upgrade_settings *)

type azurerm_kubernetes_cluster_node_pool__windows_profile = {
  outbound_nat_enabled : bool prop option; [@option]
      (** outbound_nat_enabled *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_node_pool__windows_profile *)

type azurerm_kubernetes_cluster_node_pool = {
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  custom_ca_trust_enabled : bool prop option; [@option]
      (** custom_ca_trust_enabled *)
  enable_auto_scaling : bool prop option; [@option]
      (** enable_auto_scaling *)
  enable_host_encryption : bool prop option; [@option]
      (** enable_host_encryption *)
  enable_node_public_ip : bool prop option; [@option]
      (** enable_node_public_ip *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  gpu_instance : string prop option; [@option]  (** gpu_instance *)
  host_group_id : string prop option; [@option]  (** host_group_id *)
  id : string prop option; [@option]  (** id *)
  kubelet_disk_type : string prop option; [@option]
      (** kubelet_disk_type *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  max_count : float prop option; [@option]  (** max_count *)
  max_pods : float prop option; [@option]  (** max_pods *)
  message_of_the_day : string prop option; [@option]
      (** message_of_the_day *)
  min_count : float prop option; [@option]  (** min_count *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  node_labels : (string * string prop) list option; [@option]
      (** node_labels *)
  node_public_ip_prefix_id : string prop option; [@option]
      (** node_public_ip_prefix_id *)
  node_taints : string prop list option; [@option]
      (** node_taints *)
  orchestrator_version : string prop option; [@option]
      (** orchestrator_version *)
  os_disk_size_gb : float prop option; [@option]
      (** os_disk_size_gb *)
  os_disk_type : string prop option; [@option]  (** os_disk_type *)
  os_sku : string prop option; [@option]  (** os_sku *)
  os_type : string prop option; [@option]  (** os_type *)
  pod_subnet_id : string prop option; [@option]  (** pod_subnet_id *)
  priority : string prop option; [@option]  (** priority *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  scale_down_mode : string prop option; [@option]
      (** scale_down_mode *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  spot_max_price : float prop option; [@option]
      (** spot_max_price *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ultra_ssd_enabled : bool prop option; [@option]
      (** ultra_ssd_enabled *)
  vm_size : string prop;  (** vm_size *)
  vnet_subnet_id : string prop option; [@option]
      (** vnet_subnet_id *)
  workload_runtime : string prop option; [@option]
      (** workload_runtime *)
  zones : string prop list option; [@option]  (** zones *)
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

type t = {
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

let azurerm_kubernetes_cluster_node_pool
    ?capacity_reservation_group_id ?custom_ca_trust_enabled
    ?enable_auto_scaling ?enable_host_encryption
    ?enable_node_public_ip ?eviction_policy ?fips_enabled
    ?gpu_instance ?host_group_id ?id ?kubelet_disk_type ?max_count
    ?max_pods ?message_of_the_day ?min_count ?mode ?node_count
    ?node_labels ?node_public_ip_prefix_id ?node_taints
    ?orchestrator_version ?os_disk_size_gb ?os_disk_type ?os_sku
    ?os_type ?pod_subnet_id ?priority ?proximity_placement_group_id
    ?scale_down_mode ?snapshot_id ?spot_max_price ?tags
    ?ultra_ssd_enabled ?vnet_subnet_id ?workload_runtime ?zones
    ?timeouts ~kubernetes_cluster_id ~name ~vm_size ~kubelet_config
    ~linux_os_config ~node_network_profile ~upgrade_settings
    ~windows_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_cluster_node_pool" in
  let __resource =
    ({
       capacity_reservation_group_id;
       custom_ca_trust_enabled;
       enable_auto_scaling;
       enable_host_encryption;
       enable_node_public_ip;
       eviction_policy;
       fips_enabled;
       gpu_instance;
       host_group_id;
       id;
       kubelet_disk_type;
       kubernetes_cluster_id;
       max_count;
       max_pods;
       message_of_the_day;
       min_count;
       mode;
       name;
       node_count;
       node_labels;
       node_public_ip_prefix_id;
       node_taints;
       orchestrator_version;
       os_disk_size_gb;
       os_disk_type;
       os_sku;
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
      : azurerm_kubernetes_cluster_node_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster_node_pool __resource);
  let __resource_attributes =
    ({
       capacity_reservation_group_id =
         Prop.computed __resource_type __resource_id
           "capacity_reservation_group_id";
       custom_ca_trust_enabled =
         Prop.computed __resource_type __resource_id
           "custom_ca_trust_enabled";
       enable_auto_scaling =
         Prop.computed __resource_type __resource_id
           "enable_auto_scaling";
       enable_host_encryption =
         Prop.computed __resource_type __resource_id
           "enable_host_encryption";
       enable_node_public_ip =
         Prop.computed __resource_type __resource_id
           "enable_node_public_ip";
       eviction_policy =
         Prop.computed __resource_type __resource_id
           "eviction_policy";
       fips_enabled =
         Prop.computed __resource_type __resource_id "fips_enabled";
       gpu_instance =
         Prop.computed __resource_type __resource_id "gpu_instance";
       host_group_id =
         Prop.computed __resource_type __resource_id "host_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       kubelet_disk_type =
         Prop.computed __resource_type __resource_id
           "kubelet_disk_type";
       kubernetes_cluster_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_cluster_id";
       max_count =
         Prop.computed __resource_type __resource_id "max_count";
       max_pods =
         Prop.computed __resource_type __resource_id "max_pods";
       message_of_the_day =
         Prop.computed __resource_type __resource_id
           "message_of_the_day";
       min_count =
         Prop.computed __resource_type __resource_id "min_count";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       node_labels =
         Prop.computed __resource_type __resource_id "node_labels";
       node_public_ip_prefix_id =
         Prop.computed __resource_type __resource_id
           "node_public_ip_prefix_id";
       node_taints =
         Prop.computed __resource_type __resource_id "node_taints";
       orchestrator_version =
         Prop.computed __resource_type __resource_id
           "orchestrator_version";
       os_disk_size_gb =
         Prop.computed __resource_type __resource_id
           "os_disk_size_gb";
       os_disk_type =
         Prop.computed __resource_type __resource_id "os_disk_type";
       os_sku = Prop.computed __resource_type __resource_id "os_sku";
       os_type =
         Prop.computed __resource_type __resource_id "os_type";
       pod_subnet_id =
         Prop.computed __resource_type __resource_id "pod_subnet_id";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       proximity_placement_group_id =
         Prop.computed __resource_type __resource_id
           "proximity_placement_group_id";
       scale_down_mode =
         Prop.computed __resource_type __resource_id
           "scale_down_mode";
       snapshot_id =
         Prop.computed __resource_type __resource_id "snapshot_id";
       spot_max_price =
         Prop.computed __resource_type __resource_id "spot_max_price";
       tags = Prop.computed __resource_type __resource_id "tags";
       ultra_ssd_enabled =
         Prop.computed __resource_type __resource_id
           "ultra_ssd_enabled";
       vm_size =
         Prop.computed __resource_type __resource_id "vm_size";
       vnet_subnet_id =
         Prop.computed __resource_type __resource_id "vnet_subnet_id";
       workload_runtime =
         Prop.computed __resource_type __resource_id
           "workload_runtime";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

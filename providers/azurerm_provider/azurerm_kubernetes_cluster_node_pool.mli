(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_cluster_node_pool__kubelet_config

type azurerm_kubernetes_cluster_node_pool__linux_os_config__sysctl_config

type azurerm_kubernetes_cluster_node_pool__linux_os_config

type azurerm_kubernetes_cluster_node_pool__node_network_profile__allowed_host_ports

type azurerm_kubernetes_cluster_node_pool__node_network_profile
type azurerm_kubernetes_cluster_node_pool__timeouts
type azurerm_kubernetes_cluster_node_pool__upgrade_settings
type azurerm_kubernetes_cluster_node_pool__windows_profile
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
  ?timeouts:azurerm_kubernetes_cluster_node_pool__timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  vm_size:string prop ->
  kubelet_config:
    azurerm_kubernetes_cluster_node_pool__kubelet_config list ->
  linux_os_config:
    azurerm_kubernetes_cluster_node_pool__linux_os_config list ->
  node_network_profile:
    azurerm_kubernetes_cluster_node_pool__node_network_profile list ->
  upgrade_settings:
    azurerm_kubernetes_cluster_node_pool__upgrade_settings list ->
  windows_profile:
    azurerm_kubernetes_cluster_node_pool__windows_profile list ->
  string ->
  unit

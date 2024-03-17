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
  ?capacity_reservation_group_id:string ->
  ?custom_ca_trust_enabled:bool ->
  ?enable_auto_scaling:bool ->
  ?enable_host_encryption:bool ->
  ?enable_node_public_ip:bool ->
  ?eviction_policy:string ->
  ?fips_enabled:bool ->
  ?gpu_instance:string ->
  ?host_group_id:string ->
  ?max_count:float ->
  ?message_of_the_day:string ->
  ?min_count:float ->
  ?mode:string ->
  ?node_public_ip_prefix_id:string ->
  ?node_taints:string list ->
  ?os_disk_type:string ->
  ?os_type:string ->
  ?pod_subnet_id:string ->
  ?priority:string ->
  ?proximity_placement_group_id:string ->
  ?scale_down_mode:string ->
  ?snapshot_id:string ->
  ?spot_max_price:float ->
  ?tags:(string * string) list ->
  ?ultra_ssd_enabled:bool ->
  ?vnet_subnet_id:string ->
  ?workload_runtime:string ->
  ?zones:string list ->
  ?timeouts:azurerm_kubernetes_cluster_node_pool__timeouts ->
  kubernetes_cluster_id:string ->
  name:string ->
  vm_size:string ->
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

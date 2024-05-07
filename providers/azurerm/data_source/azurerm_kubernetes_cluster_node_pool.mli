(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type upgrade_settings = { max_surge : string prop  (** max_surge *) }
type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_kubernetes_cluster_node_pool

val azurerm_kubernetes_cluster_node_pool :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kubernetes_cluster_node_pool

val yojson_of_azurerm_kubernetes_cluster_node_pool :
  azurerm_kubernetes_cluster_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enable_auto_scaling : bool prop;
  enable_node_public_ip : bool prop;
  eviction_policy : string prop;
  id : string prop;
  kubernetes_cluster_name : string prop;
  max_count : float prop;
  max_pods : float prop;
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
  os_type : string prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  spot_max_price : float prop;
  tags : (string * string) list prop;
  upgrade_settings : upgrade_settings list prop;
  vm_size : string prop;
  vnet_subnet_id : string prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

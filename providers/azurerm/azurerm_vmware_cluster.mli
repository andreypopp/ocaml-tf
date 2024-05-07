(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vmware_cluster

val azurerm_vmware_cluster :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_node_count:float prop ->
  name:string prop ->
  sku_name:string prop ->
  vmware_cloud_id:string prop ->
  unit ->
  azurerm_vmware_cluster

val yojson_of_azurerm_vmware_cluster : azurerm_vmware_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_node_count : float prop;
  cluster_number : float prop;
  hosts : string list prop;
  id : string prop;
  name : string prop;
  sku_name : string prop;
  vmware_cloud_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_node_count:float prop ->
  name:string prop ->
  sku_name:string prop ->
  vmware_cloud_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_node_count:float prop ->
  name:string prop ->
  sku_name:string prop ->
  vmware_cloud_id:string prop ->
  string ->
  t Tf_core.resource

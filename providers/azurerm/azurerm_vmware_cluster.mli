(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_cluster__timeouts
type azurerm_vmware_cluster

type t = private {
  cluster_node_count : float prop;
  cluster_number : float prop;
  hosts : string list prop;
  id : string prop;
  name : string prop;
  sku_name : string prop;
  vmware_cloud_id : string prop;
}

val azurerm_vmware_cluster :
  ?id:string prop ->
  ?timeouts:azurerm_vmware_cluster__timeouts ->
  cluster_node_count:float prop ->
  name:string prop ->
  sku_name:string prop ->
  vmware_cloud_id:string prop ->
  string ->
  t

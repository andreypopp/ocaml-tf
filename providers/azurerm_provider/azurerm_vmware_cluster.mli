(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_cluster__timeouts
type azurerm_vmware_cluster

val azurerm_vmware_cluster :
  ?id:string prop ->
  ?timeouts:azurerm_vmware_cluster__timeouts ->
  cluster_node_count:float prop ->
  name:string prop ->
  sku_name:string prop ->
  vmware_cloud_id:string prop ->
  string ->
  unit
